require 'test_helper'

class FlowerColorSearchTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert FlowerColorSearch.new.valid?
  end
end
