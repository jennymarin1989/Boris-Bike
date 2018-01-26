 require "van"

describe Van do
  describe '#collect_bikes' do
    it { is_expected.to respond_to(:collect_bikes).with(1).argument }


    it "can store an array of collected bikes" do
    expect(subject.collect_bikes(station))


  end

end
