require_relative "bike"

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :capacity # attribute reader to have access to capacity of bikes in dock station
  attr_reader :bike_rack # attriibute reader to have access to bike_rack variable, can be use a private to have references of bike_rack


  def initialize(capacity = DEFAULT_CAPACITY)

    @bike_rack = []
    @broken_bikes = []
    @capacity = capacity

  end

  def release_bike
    # Create a variable = Instantiation of class to be returned
    raise "No bikes available" if @bike_rack.empty? && @broken_bikes.empty?
    raise "No working bikes available" if @bike_rack.empty? && !@broken_bikes.empty?
    @bike_rack.pop

  end

  def dock(bike)
    raise "Docking Station is full" if full? # same as self.send(:full?)
    bike.broken? ? @broken_bikes << bike : @bike_rack << bike
  end

private

  def full?
   @bike_rack.length >= DEFAULT_CAPACITY
  end

  def empty?
    @bike_rack.empty?
  end

  #def bike
  #  @bike
  #end
end
