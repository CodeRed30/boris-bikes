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

    it 'returns the instance of the bike in response to dock' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it { is_expected.to respond_to(:bike) }

    it "raises error - docking station is empty" do
      expect { subject.release_bike }.to raise_error
    end

    it 'raises error - docking station is full' do
      # bike = Bike.new
      expect { subject.dock }.to raise_error
    end

end
