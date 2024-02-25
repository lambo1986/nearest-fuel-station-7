class NrelService
  def station_location_search(address)
    station = get_url("/api/alt-fuel-stations/v1/nearest.json?&location=#{address}&fuel_type=ELEC&limit=1")
  end

  private

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://developer.nrel.gov") do |faraday|
      faraday.params[:api_key] = Rails.application.credentials[:api_keys][:nrel]
    end
  end
end
