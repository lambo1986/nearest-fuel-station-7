class SearchController < ApplicationController
  def index
    require 'pry'; binding.pry
    @station = StationFacade.new.station_near_location(params[:location])
  end
end
