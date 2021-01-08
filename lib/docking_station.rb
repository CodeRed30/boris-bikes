require_relative 'bike'

class DockingStation
    attr_reader :bike_shed

    def initialize
        @bike_shed = []
    end

    def release_bike
      raise StandardError.new "No bikes available" if @bike_shed == []
      Bike.new
    end

    def dock(bike)
        raise StandardError.new "Docking station is full" if @bike_shed.length == 20
        @bike_shed << bike
    end
end
