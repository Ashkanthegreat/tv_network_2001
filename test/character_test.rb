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


# pry(main)> require './lib/character'
# # => true
#
# pry(main)> kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
# # => #<Character:0x00007f98a4ba8dc8...>
#
# pry(main)> kitt.name
# # => "KITT"
#
# pry(main)> kitt.actor
# # => "William Daniels"
#
# pry(main)> kitt.salary
# # => 1000000
