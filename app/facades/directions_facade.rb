class DirectionsFacade
  def here_to_there(here, there)
    service = MapQuestService.new
    response = service.a_to_b(here, there)
    directions = Directions.new(response)
  end
end
