require "rails_helper"

RSpec.describe ParkFacade do 
  it "returns parks by state" do 
    parks = ParkFacade.get_parks("TN")

    expect(parks).to be_a(Array)
    expect(parks.first).to be_a(Park)
    expect(parks.first.name).to be_a(String)
    expect(parks.first.description).to be_a(String)
    expect(parks.first.directions_info).to be_a(String)
    # expect(parks.first.standard_hours).to be_a(Array)
  end
end
