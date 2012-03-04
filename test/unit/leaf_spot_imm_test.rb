require 'test_helper'

class LeafSpotImmTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert LeafSpotImm.new.valid?
  end
end
