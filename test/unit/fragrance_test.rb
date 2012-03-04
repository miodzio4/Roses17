require 'test_helper'

class FragranceTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Fragrance.new.valid?
  end
end
