require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class CharacterTest < Minitest::Test

  def test_character_exists
    kitt = Character.new('KITT', 'William Daniels', 1_000_000)
    assert_instance_of Character, kitt
    assert_equal 'KITT', kitt.name
    assert_equal 'William Daniels', kitt.actor
    assert_equal 1_000_000, kitt.salary
  end

end
