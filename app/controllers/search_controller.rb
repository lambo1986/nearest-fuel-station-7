class SearchController < ApplicationController
  def index
    @station = StationFacade.new(params[:location])
  end
end
