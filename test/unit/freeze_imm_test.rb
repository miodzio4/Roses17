require 'test_helper'

class FreezeImmTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert FreezeImm.new.valid?
  end
end
