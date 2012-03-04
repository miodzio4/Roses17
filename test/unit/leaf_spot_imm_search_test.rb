require 'test_helper'

class LeafSpotImmSearchTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert LeafSpotImmSearch.new.valid?
  end
end
