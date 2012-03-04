require 'test_helper'

class FlowerColorTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert FlowerColor.new.valid?
  end
end
