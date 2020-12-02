class DataController < ApplicationController
  def index
     IO.copy_stream(URI.open("https://www.greenvillesc.gov/DocumentCenter/View/16030/2020-Resident-Business-License-Listing-XLS"), 'file.xlsx')
    data = Roo::Spreadsheet.open('file.xlsx')
    headers = data.row(2)
    formatted = data.drop(2).map do |r|
      row = r.map do |s|
        s.to_s.strip
      end
      Hash[headers.zip(row)]
    end
    render json: formatted
  end
end
