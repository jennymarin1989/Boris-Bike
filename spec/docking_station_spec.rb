require "docking_station"
require "bike"

describe DockingStation do
  # Expecting that DockingStation class responds to release_bike method
  # Create a new variable bike = subject(instatiation of DockingStation class).release_bike
  # Expecting object bike to works, when calling method working? should returns true
    before(:each) do
      @bike = Bike.new
    end
  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike }
  end

    # it "releases a working bike" do
    #   expect(@bike).to be_working
    # end

    it 'releases a bike' do
      subject.dock(@bike)
      expect(subject.release_bike).to be_an_instance_of(Bike)
    end

    it "raises error when not bike is in the docking station" do
      expect{subject.release_bike}.to raise_error("No bikes available")
    end

    it "raises an error when not releasing broken bikes" do
    broken_bike = Bike.new
    broken_bike.report_broken
    subject.dock(broken_bike)
    expect{ subject.release_bike}.to raise_error ("No working bikes available")

  end

  describe '#dock' do

    it { is_expected.to respond_to(:dock).with(1).argument}

    it "can store a bike " do
    expect(subject.dock(@bike)).to eq [@bike]
    end

    it "raises an error when trying to dock a bike when twenty bikes are already docked" do
      subject.capacity.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error ("Docking Station is full")
    end
  end

    it { is_expected.to respond_to :bike_rack }

    it 'Should return bike if available' do
      subject.dock(@bike)
      expect(subject.bike_rack).to eq [@bike]
    end

  describe '#initialize' do # Defining itialize method and setting capacity  = default value as an argument
    subject{ DockingStation.new}
    let(:bike) {Bike.new}
    it "should have a default capacity"do
    DockingStation::DEFAULT_CAPACITY.times do
       subject.dock (bike)
     end

     expect{subject.dock(bike) }.to raise_error "Docking Station is full"

    end
  end
end
