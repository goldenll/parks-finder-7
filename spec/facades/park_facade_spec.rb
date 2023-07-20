require "rails_helper"

RSpec.describe ParkFacade do 
  it "returns parks by state" do 
    park = ParkFacade.get_parks("TN")
# require 'pry'; binding.pry
    expect(park.first).to be_a(Park)
  end
end