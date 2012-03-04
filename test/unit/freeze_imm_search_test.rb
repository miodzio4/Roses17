require 'test_helper'

class FreezeImmSearchTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert FreezeImmSearch.new.valid?
  end
end
