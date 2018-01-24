require "docking_station"

describe DockingStation do
  # Expecting that DockingStation class responds to release_bike method
  # Create a new variable bike = subject(instatiation of DockingStation class).release_bike
  # Expecting object bike to works, when calling method working? should returns true
  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike }

    it "releases a working bike" do
      bike = Bike.new
      expect(bike).to be_working
    end

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it "raises error when not bike is in the docking station" do
      expect{subject.release_bike}.to raise_error("No bikes available")
    end
  end



    it { is_expected.to respond_to(:dock).with(1).argument}

    it "can store a bike within a variable" do
      bike = Bike.new
    expect(subject.dock(bike)).to eq bike
    end

    it { is_expected.to respond_to :bike }

    it 'Should return bike if available' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
end
