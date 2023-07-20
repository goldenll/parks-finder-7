require "rails_helper"

RSpec.describe "park service" do 
  it "returns parks by state" do 
    search = ParkService.new.parks_by_state("TN")
    park = search[:data].first

    expect(search).to be_a(Hash)
    expect(search).to have_key(:total)
    expect(search[:total]).to be_a(String)
    expect(search[:total]).to eq("15")
    expect(search[:data].count).to eq(15)
    expect(park).to have_key(:fullName)
    expect(park[:fullName]).to be_a(String)
    expect(park).to have_key(:description)
    expect(park[:description]).to be_a(String)
    expect(park).to have_key(:directionsInfo)
    expect(park[:directionsInfo]).to be_a(String)
    expect(park).to have_key(:operatingHours)
    expect(park[:operatingHours][0]).to have_key(:standardHours)
    expect(park[:operatingHours][0][:standardHours]).to be_a(Hash)
  end
end
