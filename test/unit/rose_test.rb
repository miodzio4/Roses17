require 'test_helper'

class RoseTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Rose.new.valid?
  end
end
