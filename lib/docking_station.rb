require_relative "bike"

class DockingStation
  #this replaces bike method below
  attr_reader :bike

  def release_bike
    # Create a variable = Instantiation of class to be returned
    released_bike = Bike.new
    return released_bike
  end
  def dock(bike)
    @bike = bike
    @bike
  end

  #def bike
  #  @bike
  #end
end
