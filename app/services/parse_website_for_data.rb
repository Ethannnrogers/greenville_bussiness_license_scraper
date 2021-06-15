class ParseWebsiteForData
  WEBSITE = "https://www.greenvillesc.gov".freeze
  PAGE = "/375/Business-License-Reports".freeze
  LINKS_DIV = ".fr-view ul li a".freeze

  def initialize
    @non_resident_formatted = nil
    @resident_formatted = nil
    @headers = nil
  end

  def parse
    links = fetch_links

    links[:resident].each do |link|
      parse_resident(link)
    end

    links[:non_resident].each do |link|
      parse_non_resident(link)
    end

    @resident_formatted.take(@resident_formatted.length - 1).concat(@non_resident_formatted.take(@non_resident_formatted.length - 1))
  end

  private

  def fetch_links
    document = Nokogiri::HTML(URI.open(WEBSITE + PAGE))
    links = document.css(LINKS_DIV)
    parsed_links = { non_resident: [], resident: [] }

    links.each do |link|
      if non_resident?(link.content)
        parsed_links[:non_resident].push({
          name: "#{link.content}.xlsx",
          link: WEBSITE + link.get_attribute('href')
        })
      else
        parsed_links[:resident].push({
          name: "#{link.content}.xlsx",
          link: WEBSITE + link.get_attribute('href')
        })
      end
    end

    parsed_links
  end

  def parse_non_resident(link)
    IO.copy_stream(URI.open(link[:link]), link[:name])
    non_resident_data = Roo::Spreadsheet.open(link[:name])

    @non_resident_formatted = non_resident_data.drop(2).map do |r|
      row = r.map { |s| s.to_s.strip }

      Hash[@headers.zip(row)]
    end
  end

  def parse_resident(link)
    IO.copy_stream(URI.open(link[:link]), link[:name])
    resident_data = Roo::Spreadsheet.open(link[:name])

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

  def non_resident?(link_name)
    link_name.include?("Non") || link_name.include?("non")
  end
end