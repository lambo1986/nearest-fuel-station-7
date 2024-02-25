class Station
  attr_reader :name, :address, :fuel_type, :access_times
  def initialize(attrs)
    station_attrs = attrs[:fuel_stations].first
    @name = station_attrs[:station_name]
    @address = "#{station_attrs[:street_address]}, #{station_attrs[:zip]}"
    @fuel_type = station_attrs[:fuel_type_code]
    @access_times = station_attrs[:access_days_time]
  end
end
