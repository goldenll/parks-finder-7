class Park
  attr_reader :name, 
              :description, 
              :directions_info,
              :standard_hours

  def initialize(data)
    @name = data[:fullName]
    @description = data[:description]
    @directions_info = data[:directionsInfo]
    @standard_hours = data[:standardHours]
  end
end

# def hours
#   arr = []
#   hours = @unformatted_hours.each_pair { |key, value| arr << "#{key}: #{value}" }
#   arr
# end

