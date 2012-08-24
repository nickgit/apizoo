require 'test_helper'

class SpeciesTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Species.new.valid?
  end
end
