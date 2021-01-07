require 'bike'

describe Bike do
    it { is_expected.to respond_to(:working?) }

    it 'returns true if bike is working' do
      expect(subject.working?).to eq true
    end
end
