class SearchController < ApplicationController
  def index
    @station = StationFacade.new.station_near_location(params[:location])
  end
end
