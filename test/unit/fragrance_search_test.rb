require 'test_helper'

class FragranceSearchTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert FragranceSearch.new.valid?
  end
end
