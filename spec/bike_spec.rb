require "bike"

describe Bike do
  subject{Bike.new}
  # Expecting Bike class to respond to method working
  it { is_expected.to respond_to :working? }

  it 'can be reported broken' do
    subject.report_broken
    expect(subject).to be_broken
  end

end
