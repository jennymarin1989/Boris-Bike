require_relative "bike"

class DockingStation
  #this replaces bike method below
  attr_reader :bike

  def release_bike
    # Create a variable = Instantiation of class to be returned
    raise "No bikes available" unless @bike
    @bike
  end
  def dock(bike)
  raise "Dock is full" unless @bike == nil
    @bike = bike
    @bike
  end

  #def bike
  #  @bike
  #end
end
