require 'test_helper'

class MilddewImmTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert MilddewImm.new.valid?
  end
end
