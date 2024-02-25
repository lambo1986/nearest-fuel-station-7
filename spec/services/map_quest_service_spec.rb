require "rails_helper"

RSpec.describe MapQuestService, vcr: true do
  it "has a .a_to_b method" do
    map_info = MapQuestService.new.a_to_b("5224 W 25th Ave, Denver, CO 80214", "5505 W 20th Ave, 80214")

    expect(map_info).to be_a(Hash)
  end
end
