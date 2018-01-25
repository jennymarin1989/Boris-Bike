require "bike"

describe Bike do
  # Expecting Bike class to respond to method working
  it { is_expected.to respond_to :working? }
end
