class ParkFacade
  def self.get_parks(state)
    service = ParkService.new
    request = service.parks_by_state(state)
    @parks = request[:data].map do |data|
      Park.new(data)
    end
  end

  def get_parks(state)
    service = ParkService.new
    request = service.parks_by_state(state)
    @parks = request[:data].map do |data|
      Park.new(data)
    end
  end
end


# class ParkFacade

#   def self.get_parks(state)
#     ParkService.new
#   end

#   def parks
#     json = service.parks_by_state(state)
#     json[:data].map do |data|
#       Park.new(data)
#     end
#   end
# end