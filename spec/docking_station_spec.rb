require 'docking_station'
require 'bike'

describe DockingStation do
    it { is_expected.to respond_to(:release_bike) }

    it 'releases a new instance of a bike in response to release_bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to be_an_instance_of Bike
    end

    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'returns the bike in response to dock' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike_shed).to include(bike)
    end

    it { is_expected.to respond_to(:bike_shed) }

    it "raises error - docking station is empty" do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end

    it 'raises error - docking station is full' do
      docking_station = DockingStation.new
      20.times { docking_station.dock Bike.new }
      expect { docking_station.dock(Bike.new) }.to raise_error "Docking station is full"
    end

describe 'initialization' do
  it 'has a variable capacity' do
    docking_station = DockingStation.new(50)
    50.times { docking_station.dock Bike.new }
    expect{ docking_station.dock Bike.new }.to raise_error "Docking station is full"
  end
end

end
