require_relative "bike"

class DockingStation
  #this replaces bike method below
  attr_reader :bike

  def initialize

    @bike_rack = []

  end

  def release_bike
    # Create a variable = Instantiation of class to be returned
    raise "No bikes available" unless @bike_rack.length > 0
    @bike
  end

  def dock(bike)
    raise "Dock is full" unless @bike_rack.length < 20
    @bike_rack.push(@bike)
    @bike = bike
  end

  #def bike
  #  @bike
  #end
end
