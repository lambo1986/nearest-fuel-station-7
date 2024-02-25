class SearchController < ApplicationController
  def index
    @station = StationFacade.new.station_near_location(params[:location])
    @directions = DirectionsFacade.new.here_to_there(@station.address, params[:location])
  end
end
