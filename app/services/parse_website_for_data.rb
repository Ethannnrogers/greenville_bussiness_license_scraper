class ParseWebsiteForData
  COOKIE = "RpsContextCookie=U291cmNlPSUyRnNpdGVzJTJGUHVibGljU2hhcmluZyUyRiU1RmxheW91dHMlMkYxNSUyRmRvYzIlMkVhc3B4JTNGc291cmNlZG9jJTNEJTI1N0I5NDJFNzE0NCUyRDgxRjQlMkQ0NUYyJTJEOUE5MiUyREM3MDMwNjExMkQ4MCUyNTdEJTI2ZmlsZSUzRFllYXIlMkR0byUyRERhdGUlMjUyME5ldyUyNTIwQnVzaW5lc3MlMjUyMExpc3RpbmclMkV4bHN4JTI2YWN0aW9uJTNEZGVmYXVsdCUyNm1vYmlsZXJlZGlyZWN0JTNEdHJ1ZSUyNkNUJTNEMTYyNDgwMDc3NDMwNSUyNk9SJTNESXRlbXNWaWV3JlByZXZpb3VzUmVxdWVzdENvcnJlbGF0aW9uSWQ9OTJmZGQ1OWYlMkQ0MDQ5JTJEYzAwMCUyRDRjZmElMkQ0NDg3ODFhZTAxOWEmUmV0dXJuVXJsPSUyRnNpdGVzJTJGUHVibGljU2hhcmluZyUyRiU1RmxheW91dHMlMkYxNSUyRkF1dGhlbnRpY2F0ZSUyRWFzcHglM0ZTb3VyY2UlM0QlMjUyRnNpdGVzJTI1MkZQdWJsaWNTaGFyaW5nJTI1MkYlMjU1RmxheW91dHMlMjUyRjE1JTI1MkZkb2MyJTI1MkVhc3B4JTI1M0Zzb3VyY2Vkb2MlMjUzRCUyNTI1N0I5NDJFNzE0NCUyNTJEODFGNCUyNTJENDVGMiUyNTJEOUE5MiUyNTJEQzcwMzA2MTEyRDgwJTI1MjU3RCUyNTI2ZmlsZSUyNTNEWWVhciUyNTJEdG8lMjUyRERhdGUlMjUyNTIwTmV3JTI1MjUyMEJ1c2luZXNzJTI1MjUyMExpc3RpbmclMjUyRXhsc3glMjUyNmFjdGlvbiUyNTNEZGVmYXVsdCUyNTI2bW9iaWxlcmVkaXJlY3QlMjUzRHRydWUlMjUyNkNUJTI1M0QxNjI0ODAwNzc0MzA1JTI1MjZPUiUyNTNESXRlbXNWaWV3; nSGt-68471D977918D83D9DC17114F66770E6CB3B571A856B6557=gYEwQTI0QTE3MDU2QzkyOTQ4NzNDQ0U2NjhBQjBCQjFBRERCMTMwQjQyQzk1OUMxODZFMDY4NDcxRDk3NzkxOEQ4M0Q5REMxNzExNEY2Njc3MEU2Q0IzQjU3MUE4NTZCNjU1NxIxMzI2OTI3NDk1OTE1MTMxODkcZ3JlZW52aWxsZXNjMS5zaGFyZXBvaW50LmNvbZ6rZ8wHgtqvmXwoXEh1W8W/pi5fnMgYofTWuJUZoB/FMtEoSTGZg0lOuq3TGfcO1AiwCbunrqjdsAPu+EBfwqzKjXTyW7N792d+720xP/7wgNK98HUbD156WRJnLd4Cs57GTfqFhIuatVp0ffe+v7oVOuAdRe69JdTdOWy4NMpWXIA8Vh3GCj6UbDSY656TN/wgWMCFmqOgZymJGJrm159xrEF+v3VsiqZgzodHRz0TRXekHn/yuMa/PJYZvmKkLN0QuEN7kJVPHfy6qqch4+9TrJlasDEjDevJ+odGYK+OmV7VXYd1NicNhf8rDa2H8Jt6eFh0pY+ShpbjJ7hjdAeUAAAA; nSGt-28F7286F97AD842CE1DFB6125E90EA002A9771A29405B253=gYEwM0ZCRjlDMjMxNzE5QkNBODUxOTU3OEJBRTk5NjkyMEQzQzAzMzgxNjNEQTc5ODYzMDI4RjcyODZGOTdBRDg0MkNFMURGQjYxMjVFOTBFQTAwMkE5NzcxQTI5NDA1QjI1MxIxMzI2OTI3NDk2NzI0NDkyODMcZ3JlZW52aWxsZXNjMS5zaGFyZXBvaW50LmNvbS8anPi6tmZBKdDFDDenIWL6BVfsDsecwJFPAmucQsO+TISqOPfFJpqdshYMce2x3BdMvCt1J/CveB0sam6l5zElXztFDMw4ayDwUTlm8ywjGXWl8BDsXL/zrlN0DszpHxemCdqjfoDt233Ut3/XQNOIJefk19jcJV0MG1ElA7beT29rGHeN8LLhwXeIRUaZno+vdvBO7gdOxhKc9rJW8+nUX6uAzHKdv2Nisb8zU+4aJv3n3GcpYOdC7sTvseKt0eM9XNTvwJVgWtYsMZZAp02OgxiM266IJ+UHE3AtSfMfQivX5ml8f9hRMlHIZs/Lzwd0zsqKojQZ2eK3ZR2VHAKUAAAA; nSGt-AC2FD2CEEF54F62179B1C1C94877623198E1C898B5ADD4F7=gYEwQUY0RTFDNEI5Njg3ODBFRDFFMDI5MkQ5MzZDNzVENUMyMDUwNzM3MTlGNDdDRDlFMEFDMkZEMkNFRUY1NEY2MjE3OUIxQzFDOTQ4Nzc2MjMxOThFMUM4OThCNUFERDRGNxIxMzI2OTI3NDk3NTM2MzE3OTQcZ3JlZW52aWxsZXNjMS5zaGFyZXBvaW50LmNvbUt8XAcLuBS/QK7EnUDzYUp2YR+GwDuvvagWT+mquT6lv0OglHjFUi+80wxPtkbNCPV4z4VUT9+BgyFefBCmmvO1xSldE26e9WDwQtoFTtIgPTtRZCqI6HsQjsyicZNy4jLuSunwHMXBSkQvnKuuIoT6q5gljAtOerstNVlemtSfTqTqREgwMekQnGtpqvYuXjsfAbR22kbnxZDRHKmYB8D2qCklx+k6KozPTjXIMbHif4DEi50ipNK0yemh3Ygq/LhTqIvFGnirDZKGBhHpTMBjryDYGnBrPezYLXweT1xQLLK3jqhyYut54xrWsm+XpXOaCNwx1PdSPmM0PfT3tk6UAAAA; FedAuth=77u/PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz48U1A+VjEwLDBoLmZ8bWVtYmVyc2hpcHx1cm4lM2FzcG8lM2Fhbm9uI2U3MmNmMGRiYzU1NjExNDRjMzFjMTQxNGE0ZjZmYmIzM2E4Y2ZiNjJjODA1NzYzNjA2YmZhODBkY2I0MDU2YzMsMCMuZnxtZW1iZXJzaGlwfHVybiUzYXNwbyUzYWFub24jZTcyY2YwZGJjNTU2MTE0NGMzMWMxNDE0YTRmNmZiYjMzYThjZmI2MmM4MDU3NjM2MDZiZmE4MGRjYjQwNTZjMywxMzI2OTI3NDY5NTAwMDAwMDAsMCwxMzI2OTM2MDc5NjA1MDY5NDEsMC4wLjAuMCwyNTgsZjJlMGNmNzEtZWU3NC00MmE2LTk2MTQtZjA4YzcxNmNhNjA1LCwsOTdmZGQ1OWYtODA0Yi1jMDAwLTRjZmEtNDIyNGM3MDY3Y2I2LDk3ZmRkNTlmLTgwNGItYzAwMC00Y2ZhLTQyMjRjNzA2N2NiNiwxcjF1b3J1TnFVeWVJbFlOYU1xajZnLDAsMCwwLCwsLDI2NTA0Njc3NDM5OTk5OTk5OTksMCwsLCwsLCxWZ0RJU3VUeXI2KzBTazdNdnFjeDNuL2phTkJ4RXZxeWlPUm9Kb1dkMzFMYzRYU0RQVVJqOVlSTTNsaWpncm1xaFdQZmFQaE50TERxcUIyS01pYk8rVHgxYUp3VCs5SjhWRTBQdTJya3kyRnBUOGxGMzg1T1o0VEpyNEpNYVM3R1lPOER2UTcwQ1dyb2dTZHlJYmxsTXRrMHMyTEtVSDJVMEF4QlY2aGI5U05ta04wQWNQbDVqMUpuMEYzUkNBUm5CbktuTS91VlR4ODBaenhac2RqUGFxTGdZNGtkQTZiQmtoRGh3d0VOc3dXNitIOG9NTEVhdktaWFJvU2lnekxyOTBBMDd0K2dlYWRIbVU5YzFzbFhaR29QUUdHVVErS21ITzFxMUtyUDgyc1JxMjAwdXgxYks3TVNVeXV4V1p2emxGNDdvYk9jUnRScmNFRVpRM2NUK2c9PTwvU1A+; ScaleCompatibilityDeviceId=a140ba5f-7ad6-42f0-9c27-1b01132baa23".freeze
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