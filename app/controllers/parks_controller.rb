class ParksController < ApplicationController
  def index
  # require 'pry'; binding.pry
    @parks = ParkFacade.new.get_parks(params[:state])
  end
end
