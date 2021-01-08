require_relative 'bike'

class DockingStation
    attr_reader :bike_shed

    def initialize
        @bike_shed = []
    end

    def release_bike
      empty?
      Bike.new
    end

    def dock(bike)
      full?
      @bike_shed << bike
    end

    private

    def full?
      raise StandardError.new "Docking station is full" if @bike_shed.length >= 20
    end

    def empty?
      raise StandardError.new "No bikes available" if @bike_shed == []
    end
end
