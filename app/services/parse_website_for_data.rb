class ParseWebsiteForData
  WEBSITE_LINK = "https://www.greenvillesc.gov/375/Business-License-Reports".freeze
  COOKIE = "FedAuth=77u/PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz48U1A+VjEwLDBoLmZ8bWVtYmVyc2hpcHx1cm4lM2FzcG8lM2Fhbm9uI2U3MmNmMGRiYzU1NjExNDRjMzFjMTQxNGE0ZjZmYmIzM2E4Y2ZiNjJjODA1NzYzNjA2YmZhODBkY2I0MDU2YzMsMCMuZnxtZW1iZXJzaGlwfHVybiUzYXNwbyUzYWFub24jZTcyY2YwZGJjNTU2MTE0NGMzMWMxNDE0YTRmNmZiYjMzYThjZmI2MmM4MDU3NjM2MDZiZmE4MGRjYjQwNTZjMywxMzI3MDQwMjgyMzAwMDAwMDAsMCwxMzI3MDQ4ODkyMzQwMDY2MjgsMC4wLjAuMCwyNTgsZjJlMGNmNzEtZWU3NC00MmE2LTk2MTQtZjA4YzcxNmNhNjA1LCwsNzQzMWRhOWYtMTBmOS1jMDAwLTQxZDgtOGZjNTFhZDIwYjk0LDc0MzFkYTlmLTEwZjktYzAwMC00MWQ4LThmYzUxYWQyMGI5NCxmWmpEcS9aWnYwT1VmYWhPR0VHTVN3LDAsMCwwLCwsLDI2NTA0Njc3NDM5OTk5OTk5OTksMCwsLCwsLCxRZG5lUGJGNmhSTkJMdkpOQlQ2OWtQdnN6WEFaU2c4RHRxU2dma0lNMlQ5dzArdFV4UjMrajh3Y2N1S2pYTnZkbDBjNmhoYXVGcDczWDZpNXRmWmdmaGwxS08reGVzMllpYnlTT3RPWnhzT0hPL2s5SStpcVlNR0Q1eUgwY0hOS2NRNVkyekZKbkJibGpmVmxWdlVlVmhwMkFGRlY4Mlo5d05JTFBiRUUwaldPUEN3a2Voend2QW9PcFpkQ0V4U1hQNTlCQVdZVSs1TmRzT1lOdVpCR01XL0tJZC9pb3l3MjZzbHBOUFdUVnV1UmhzRXNkU3hld0wxaWdkRThkaVFJQ3YzUDZsNzUyTDlYRzFJclpGazN6Sld5UmdMRWdlYmdrb1F2bHRPVWdhcDQvQ2VoOEp0eVF6L0hzSGlVckFUVEcvSVVxQVpnR2dEZ3RoZVVYOUhzYkE9PTwvU1A+; RpsContextCookie=U291cmNlPSUyRnNpdGVzJTJGUHVibGljU2hhcmluZyUyRlNoYXJlZCUyMERvY3VtZW50cyUyRkZvcm1zJTJGQWxsSXRlbXMlMkVhc3B4JTNGaWQlM0QlMjUyRnNpdGVzJTI1MkZQdWJsaWNTaGFyaW5nJTI1MkZTaGFyZWQlMjUyMERvY3VtZW50cyUyNTJGQnVzaW5lc3MlMjUyMExpY2Vuc2UlMjUyRlllYXIlMjUyRHRvJTI1MkREYXRlJTI1MjBCdXNpbmVzcyUyNTIwTGljZW5zZSUyNTIwUmVwb3J0cyUyNnAlM0R0cnVlJTI2b3JpZ2luYWxQYXRoJTNEYUhSMGNITTZMeTluY21WbGJuWnBiR3hsYzJNeExuTm9ZWEpsY0c5cGJuUXVZMjl0THpwbU9pOXpMMUIxWW14cFkxTm9ZWEpwYm1jdlJYUlBlRlJoTTA5R1gwWkViRFV0WjJkU0xTMVFhMUZDVjFGbk1VNHdibVl3Um1WQldrMUxkamxsWVZkb1FUOXlkR2x0WlQxTlpHMUlTRzVCTlRKVlp3JlByZXZpb3VzUmVxdWVzdENvcnJlbGF0aW9uSWQ9NjIzMWRhOWYlMkQxMDE5JTJEYzAwMCUyRDQxZDglMkQ4NmUwNGQ4NDhiZjcmUmV0dXJuVXJsPSUyRnNpdGVzJTJGUHVibGljU2hhcmluZyUyRiU1RmxheW91dHMlMkYxNSUyRkF1dGhlbnRpY2F0ZSUyRWFzcHglM0ZTb3VyY2UlM0QlMjUyRnNpdGVzJTI1MkZQdWJsaWNTaGFyaW5nJTI1MkZTaGFyZWQlMjUyMERvY3VtZW50cyUyNTJGRm9ybXMlMjUyRkFsbEl0ZW1zJTI1MkVhc3B4JTI1M0ZpZCUyNTNEJTI1MjUyRnNpdGVzJTI1MjUyRlB1YmxpY1NoYXJpbmclMjUyNTJGU2hhcmVkJTI1MjUyMERvY3VtZW50cyUyNTI1MkZCdXNpbmVzcyUyNTI1MjBMaWNlbnNlJTI1MjUyRlllYXIlMjUyNTJEdG8lMjUyNTJERGF0ZSUyNTI1MjBCdXNpbmVzcyUyNTI1MjBMaWNlbnNlJTI1MjUyMFJlcG9ydHMlMjUyNnAlMjUzRHRydWUlMjUyNm9yaWdpbmFsUGF0aCUyNTNEYUhSMGNITTZMeTluY21WbGJuWnBiR3hsYzJNeExuTm9ZWEpsY0c5cGJuUXVZMjl0THpwbU9pOXpMMUIxWW14cFkxTm9ZWEpwYm1jdlJYUlBlRlJoTTA5R1gwWkViRFV0WjJkU0xTMVFhMUZDVjFGbk1VNHdibVl3Um1WQldrMUxkamxsWVZkb1FUOXlkR2x0WlQxTlpHMUlTRzVCTlRKVlp3; nSGt-85CAFCEEA5128291AAFD1442FD991718E4F43379FEFAE2B4=gYEwQUQzMEMxNEIzNjFFNTRCNzczNTRBOEJGRDk4OTY1MDQyQzkwMzU3NTU3MTFGMTA0MDg1Q0FGQ0VFQTUxMjgyOTFBQUZEMTQ0MkZEOTkxNzE4RTRGNDMzNzlGRUZBRTJCNBIxMzI3MDQwMzAzMzMwNzQ2OTYcZ3JlZW52aWxsZXNjMS5zaGFyZXBvaW50LmNvbTxDDy2BSXa+/TaMwWvWbwR29JQShbny+aTdtIBmWeh36M9cJkt8KSE5ZuvDRWb/EMdkcGLV4ZIMkwSCF0FCQPlxJU5QwDQaB+ZgyVmn7X0qMm5HkRjg16SlCY1QhB2qKFalJgyL5f7nNrD+Qo7WekdPezW93t9CAk5m2/MNruaD2+AfeaYuLTn5ZtGe1KVh2w53YOS7gbP+GnwZ24C52GwbaELZ4HzbuXpsbProtn1VGXdO+Xjc4oK8OeWGza9emPtBVcefW1tKudQHwpLnO8Pcd/3jyKT6hgOrFdWOHq167hn+EqmKYvukYE5o51ygmTceUe04ot6NjS6XxcrghCiUAAAA; nSGt-F014E655EF2792C9328ED49E8FCA24B17D46FA365B7FFFFC=gYEwQzZCNTVCRTVDNEY3NDc0MTE1OTg2RTFGQUE3NUNFNUNCODIxNjVBMjc4OTFBODk2MEYwMTRFNjU1RUYyNzkyQzkzMjhFRDQ5RThGQ0EyNEIxN0Q0NkZBMzY1QjdGRkZGQxIxMzI3MDQwMzA0NTcyOTI2NzUcZ3JlZW52aWxsZXNjMS5zaGFyZXBvaW50LmNvbQ7B/C0On89Iib0WqOyBHmaQYarDGuy3w4VT0302ezuhdCuyub4736xE5CwNpBnkHZwh/dP4P1DG3Tz7cfY9Bwb8mRi5sNKaFawlDNB/6R85oeKES3nej4SU/fK0k++292RzBuiuB4J8RDQPprWBicu7tsw01dDEXaY25gjzAOGuFJa0IsMWsn51Pq/vtqMY1Crg1YIBoSSePUgnkHKRkopP5pgrnpekS6UtncNb5xnEMW7x4RnihX+wGwq7gcl5D8n5WrKj4NbHpmjsjHAgQroJr+NQj1RYe3oXpT3b5HF8RGxC6sgRrOprZDhxeUTB2eSv0T+rlMTiFQgeCLTBWSOUAAAA; SPWorkLoadAttribution=Url=https://greenvillesc1.sharepoint.com/sites/PublicSharing/Shared%20Documents/Forms/AllItems.aspx&AppTitle=ModernDoclibListPage; ScaleCompatibilityDeviceId=7a387e96-34ce-4303-a528-68193514f005".freeze
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
    LINKS[:resident].each { |element| parse_resident(element) }
    LINKS[:non_resident].each { |element| parse_non_resident(element) }
    LINKS[:business].each { |element| parse_business(element) }

    @resident_formatted.take(@resident_formatted.length - 1)
                       .concat(@non_resident_formatted.take(@non_resident_formatted.length - 1))
                       .concat(@business_formatted.take(@business_formatted.length - 1))
  end

  private

  def parse_non_resident(element)
    `curl --header 'Upgrade-Insecure-Requests: 1' '#{element[:link]}' --cookie '#{COOKIE}' --output '#{element[:name]}'`

    non_resident_data = Roo::Spreadsheet.open(element[:name])

    @non_resident_formatted = non_resident_data.drop(2).map do |r|
      row = r.map { |s| s.to_s.strip }

      Hash[@headers.zip(row)]
    end
  end

  def parse_resident(element)
    `curl --header 'Upgrade-Insecure-Requests: 1' '#{element[:link]}' --cookie '#{COOKIE}' --output '#{element[:name]}'`

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
    `curl --header 'Upgrade-Insecure-Requests: 1' '#{element[:link]}' --cookie '#{COOKIE}' --output '#{element[:name]}'`

    resident_data = Roo::Spreadsheet.open(element[:name])

    @business_formatted = resident_data.drop(2).map do |r|
      row = r.map do |s|
        s.to_s.strip
      end
      Hash[@headers.zip(row)]
    end
  end
end