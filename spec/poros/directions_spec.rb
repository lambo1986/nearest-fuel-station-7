require "rails_helper"

RSpec.describe Directions do
  it "exists" do
    attrs = { :route => {
          :distance => 0.7077,
          :formattedTime => "00:02:36",
          :legs => [{
            :maneuvers => [{
              :narrative => "Turn right onto the right"
            },
          {
            :narrative => "Turn left onto the left"
          },
        {
          :narrative => "Turn right onto the left"
        }]
      }]
        }
    }

    directions = Directions.new(attrs)

    expect(directions).to be_an_instance_of(Directions)
    expect(directions.distance).to eq("0.7 miles")
    expect(directions.travel_time).to eq("00:02:36")
    expect(directions.maneuvers).to eq(["Turn right onto the right", "Turn left onto the left", "Turn right onto the left"])
  end
end
