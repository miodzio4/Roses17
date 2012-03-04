require 'test_helper'

class HeightSearchTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert HeightSearch.new.valid?
  end
end
