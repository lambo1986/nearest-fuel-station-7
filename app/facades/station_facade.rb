class StationFacade
  def station_near_location(address)
    service = NrelService.new
    response = service.station_location_search(address)
    station = Station.new(response)
  end
end
