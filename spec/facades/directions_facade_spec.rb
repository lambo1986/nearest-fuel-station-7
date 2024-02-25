require "rails_helper"

RSpec.describe DirectionsFacade, vcr: true do
  describe ".here_to_there" do
    it "returns info for a map quest route" do
      route_info = DirectionsFacade.new.here_to_there("5224 W 25th Ave, Denver, CO 80214", "5505 W 20th Ave, 80214")

      expect(route_info).to be_a(Directions)
    end
  end
end
