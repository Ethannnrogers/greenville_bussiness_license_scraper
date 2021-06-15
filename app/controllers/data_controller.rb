class DataController < ApplicationController
  def index
    data = ParseWebsiteForData.new.parse

    render json: data
  end
end
