require "docking_station"

describe DockingStation do
  # Expecting that DockingStation class responds to release_bike method
  # Create a new variable bike = subject(instatiation of DockingStation class).release_bike
  # Expecting object bike to works, when calling method working? should returns true
    it { is_expected.to respond_to :release_bike }
    it "releases a working bike" do
      bike = subject.release_bike
      expect(bike).to be_working
    end
    it { is_expected.to respond_to(:dock).with(1).argument}
    it "can store a bike within a variable" do
      bike = subject.release_bike
    expect(subject.dock(bike)).to eq bike
    end

    it { is_expected.to respond_to :bike }

    it 'Should return bike if available' do
      bike = subject.release_bike
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
end
