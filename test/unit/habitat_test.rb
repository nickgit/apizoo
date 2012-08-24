require 'test_helper'

class HabitatTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Habitat.new.valid?
  end
end
