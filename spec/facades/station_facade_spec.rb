require "rails_helper"

RSpec.describe StationFacade, vcr: true do
  describe ".station_near_location" do
    it "returns one station near input location" do
      station = StationFacade.new.station_near_location("5224 W 25th Ave, Denver, CO 80214")

      expect(station).to be_a(Station)
    end
  end
end
