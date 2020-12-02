class DataController < ApplicationController
  def index
    IO.copy_stream(URI.open("https://www.greenvillesc.gov/DocumentCenter/View/16030/2020-Resident-Business-License-Listing-XLS"), 'resident-file.xlsx')
    resident_data = Roo::Spreadsheet.open('resident-file.xlsx')
    IO.copy_stream(URI.open("https://www.greenvillesc.gov/DocumentCenter/View/16029/2020-Non-Resident-Business-License-Listing-XLS"), 'non-resident-file.xlsx')
    non_resident_data = Roo::Spreadsheet.open('non-resident-file.xlsx')
    headers = resident_data.row(2)
    resident_formatted = resident_data.drop(2).map do |r|
      row = r.map do |s|
        s.to_s.strip
      end
      {id: 1}.merge(Hash[headers.zip(row)])
    end
    non_resident_formatted = non_resident_data.drop(2).map do |r|
      row = r.map do |s|
        s.to_s.strip
      end
      {id: 1}.merge(Hash[headers.zip(row)])
    end
    render json: resident_formatted.take(resident_formatted.length - 1).concat(non_resident_formatted.take(non_resident_formatted.length - 1))
  end
end
