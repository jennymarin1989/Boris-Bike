require_relative 'docking_station'


class Van

  def collect_bikes(station)
    @collected_bikes = station.broken_bikes
    station.broken_bikes = []
  end



end
