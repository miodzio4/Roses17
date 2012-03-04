require 'test_helper'

class MilddewImmSearchTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert MilddewImmSearch.new.valid?
  end
end
