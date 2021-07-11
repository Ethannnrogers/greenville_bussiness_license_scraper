require 'puppeteer'

class ParseWebsiteForData
  WEBSITE_LINK = "https://www.greenvillesc.gov/375/Business-License-Reports".freeze
  DOMAIN_LINK = "https://greenvillesc1.sharepoint.com/sites/PublicSharing/_layouts/15/download.aspx?UniqueId="

  # Links are fetched by Firefox extension "cliget". Parsed url is https://greenvillesc1.sharepoint.com/sites/PublicSharing/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FPublicSharing%2FShared%20Documents%2FBusiness%20License%2FYear%2Dto%2DDate%20Business%20License%20Reports&p=true&originalPath=aHR0cHM6Ly9ncmVlbnZpbGxlc2MxLnNoYXJlcG9pbnQuY29tLzpmOi9zL1B1YmxpY1NoYXJpbmcvRXRPeFRhM09GX0ZEbDUtZ2dSLS1Qa1FCV1FnMU4wbmYwRmVBWk1LdjllYVdoQT9ydGltZT1NZG1ISG5BNTJVZw
  LINKS = {
    resident: [
      {
        link: DOMAIN_LINK + "7123d510%2D8552%2D4f5d%2Db02b%2D92e76f5a90aa",
        name: "Year-To-Date Resident Business License Listing.xlsx"
      }
    ],
    non_resident: [
      {
        link: DOMAIN_LINK + "8ea703b2%2D221e%2D4afb%2D9660%2D2f142af4298d",
        name: "Year-to-Date Non Resident Business License Listing.xlsx"
      }
    ],
    business: [
      {
        link: DOMAIN_LINK + "942e7144%2D81f4%2D45f2%2D9a92%2Dc70306112d80",
        name: "Year-to-Date New Business Listing.xlsx"
      }
    ]
  }

  def initialize
    @non_resident_formatted = nil
    @resident_formatted = nil
    @business_formatted = nil
    @headers = nil
  end

  def parse
    fetch_cookie

    LINKS[:resident].each { |element| parse_resident(element) }
    LINKS[:non_resident].each { |element| parse_non_resident(element) }
    LINKS[:business].each { |element| parse_business(element) }

    @resident_formatted.take(@resident_formatted.length - 1)
                       .concat(@non_resident_formatted.take(@non_resident_formatted.length - 1))
                       .concat(@business_formatted.take(@business_formatted.length - 1))
  end

  private

  # Fetch cookie by Puppeteer by imitating the browser and getting it's cookie
  def fetch_cookie
    @cookie = 'FedAuth='

    Puppeteer.launch(headless: true, args: ['--no-sandbox']) do |browser|
      page = browser.pages.first || browser.new_page
      page.goto("https://greenvillesc1.sharepoint.com/:f:/s/PublicSharing/EtOxTa3OF_FDl5-ggR--PkQBWQg1N0nf0FeAZMKv9eaWhA")

      page.cookies.each { |cookie| @cookie << cookie["value"] if cookie["name"] == "FedAuth" }
      @cookie
    end
  end

  def parse_non_resident(element)
    `curl --header 'Upgrade-Insecure-Requests: 1' '#{element[:link]}' --cookie '#{@cookie}' --output '#{element[:name]}'`

    non_resident_data = Roo::Spreadsheet.open(element[:name])

    @non_resident_formatted = non_resident_data.drop(2).map do |r|
      row = r.map { |s| s.to_s.strip }

      Hash[@headers.zip(row)]
    end
  end

  def parse_resident(element)
    `curl --header 'Upgrade-Insecure-Requests: 1' '#{element[:link]}' --cookie '#{@cookie}' --output '#{element[:name]}'`

    resident_data = Roo::Spreadsheet.open(element[:name])

    @headers ||= resident_data.row(2).map do |h|
      h.to_s.strip
    end

    @resident_formatted = resident_data.drop(2).map do |r|
      row = r.map do |s|
        s.to_s.strip
      end
      Hash[@headers.zip(row)]
    end
  end

  def parse_business(element)
    `curl --header 'Upgrade-Insecure-Requests: 1' '#{element[:link]}' --cookie '#{@cookie}' --output '#{element[:name]}'`

    resident_data = Roo::Spreadsheet.open(element[:name])

    @business_formatted = resident_data.drop(2).map do |r|
      row = r.map do |s|
        s.to_s.strip
      end
      Hash[@headers.zip(row)]
    end
  end
end