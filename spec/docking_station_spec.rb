require "docking_station"

class DummyBike

  def broken?
    @broken = false
  end

  def report_broken
    @broken = true
  end
end

class DummyBrokenBike
  def broken?
    true
  end

  def report_broken
    @broken = true
  end

end

describe DockingStation do
  # Expecting that DockingStation class responds to release_bike method
  # Create a new variable bike = subject(instatiation of DockingStation class).release_bike
  # Expecting object bike to works, when calling method working? should returns true
  # blah blah blah

  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike }
  end

    let(:bike) {double :bike}
    it 'releases a working bike' do
      allow(bike).to receive(:broken?).and_return(false)
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end


    it "raises error when not bike is in the docking station" do
      expect{subject.release_bike}.to raise_error("No bikes available")
    end

    it "raises an error when not releasing broken bikes" do
    broken_bike = DummyBrokenBike.new
    broken_bike.report_broken
    subject.dock(broken_bike)
    expect{ subject.release_bike}.to raise_error ("No working bikes available")

  end

  describe '#dock' do

    it { is_expected.to respond_to(:dock).with(1).argument}

    it "can store a bike " do
      bike = DummyBike.new
    expect(subject.dock(bike)).to eq [bike]
    end

    it "raises an error when trying to dock a bike when twenty bikes are already docked" do
      subject.capacity.times { subject.dock DummyBike.new }
      expect { subject.dock DummyBike.new }.to raise_error ("Docking Station is full")
    end
  end

    it { is_expected.to respond_to :bike_rack }

    it 'Should return bike if available' do
      bike = DummyBike.new
      subject.dock(bike)
      expect(subject.bike_rack).to eq [bike]
    end

  describe '#initialize' do # Defining itialize method and setting capacity  = default value as an argument
    subject{ DockingStation.new}
    let(:bike) {DummyBike.new}
    it "should have a default capacity"do
    DockingStation::DEFAULT_CAPACITY.times do
       subject.dock (bike)
     end

     expect{subject.dock(bike) }.to raise_error "Docking Station is full"

    end
  end
end
