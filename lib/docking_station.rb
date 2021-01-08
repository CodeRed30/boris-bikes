require_relative 'bike'

class DockingStation
    attr_reader :bike_shed

    DEFAULT_CAPACITY = 20

    def initialize(capacity = DEFAULT_CAPACITY)
        @bike_shed = []
        @capacity = capacity
    end

    def release_bike
      empty?
      @bike_shed.pop unless @bike_shed[0].broken?
    end

    def dock(bike)
      full?
      @bike_shed << bike
    end

    private

    def full?
      raise StandardError.new "Docking station is full" if @bike_shed.length >= @capacity
    end

    def empty?
      raise StandardError.new "No bikes available" if @bike_shed == []
    end
end
