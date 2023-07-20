require "rails_helper"

RSpec.describe Park do 
  it "exists and has attributes" do 
    data = {
      :fullName=>"Big Bend National Park",
      :description=>"Description.",
      :directionsInfo=>"Directions",
      :standardHours=>{:wednesday=>"All Day", :monday=>"All Day", :thursday=>"All Day", :sunday=>"All Day", :tuesday=>"All Day", :friday=>"All Day", :saturday=>"All Day"}
    }

    park = Park.new(data)

    expect(park).to be_a(Park)
    expect(park.name).to eq("Big Bend National Park")
    expect(park.description).to eq("Description.")
    expect(park.directions_info).to eq("Directions")
    expect(park.standard_hours).to be_a(Hash)
  end
end
