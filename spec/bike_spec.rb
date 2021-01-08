require 'bike'

describe Bike do
    it { is_expected.to respond_to(:broken?) }

    it { is_expected.to respond_to(:report_broken) }

    it 'returns true if bike is broken' do
      subject.report_broken
      expect(subject).to be_broken
    end
end
