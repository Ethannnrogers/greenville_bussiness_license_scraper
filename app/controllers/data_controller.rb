class DataController < ApplicationController
  def index
    IO.copy_stream(URI.open("https://www.greenvillesc.gov/DocumentCenter/View/16030/2020-Resident-Business-License-Listing-XLS"), 'resident-file.xlsx')
    resident_data = Roo::Spreadsheet.open('resident-file.xlsx')
    IO.copy_stream(URI.open("https://www.greenvillesc.gov/DocumentCenter/View/16030/2020-Non-Resident-Business-License-Listing-XLS"), 'non-resident-file.xlsx')
    non_resident_data = Roo::Spreadsheet.open('non-resident-file.xlsx')
    headers = resident_data.row(2)
    resident_formatted = resident_data.drop(2).take(resident_data.size - 1).map do |r|
      row = r.map do |s|
        s.to_s.strip
      end
      Hash[headers.zip(row)]
    end
    non_resident_formatted = non_resident_data.drop(2).take(non_resident_data.size - 1).map do |r|
      row = r.map do |s|
        s.to_s.strip
      end
      Hash[headers.zip(row)]
    end
    render json: resident_formatted.concat(non_resident_formatted)
  end
end
