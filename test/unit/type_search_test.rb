require 'test_helper'

class TypeSearchTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert TypeSearch.new.valid?
  end
end
