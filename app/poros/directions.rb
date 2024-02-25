class Directions
  attr_reader :distance, :travel_time, :maneuvers
  def initialize(attrs)
    attr_adjusted = attrs[:route]
    @distance = format("%.1f miles", attr_adjusted[:distance])
    @travel_time = attr_adjusted[:formattedTime]
    @maneuvers = attr_adjusted[:legs].first[:maneuvers].map { |m| m[:narrative] }
  end
end
