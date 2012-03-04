require 'test_helper'

class HeightTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Height.new.valid?
  end
end
