require "docking_station"
require "bike"

describe DockingStation do
    it { is_expected.to respond_to :release_bike }
    it { is_expected.to be bike.working?}
end


it "SKJDHKJDSH" do
  expect(bike(working?))to eq true
end
