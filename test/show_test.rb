require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'

class ShowTest < Minitest::Test

  def setup
    @show = Show.new('Knigit Rider', 'Glen Larson', '[michael_knight, kitt]')
    @kitt = Character.new('KITT', 'William Daniels', 1_000_000)
    @michael_knight = Character.new('Michael Knight', 'David Hasselhoff', 1_600_000)
  end

  def test_show_exists
    assert_instance_of Show, @show
  end


  def test_it_can_calculate_total_salary
    assert_equal 2600000, @knight_rider.total_salary
  end




end




# pry(main)> knight_rider.total_salary
# # => 2600000
#
# pry(main)> knight_rider.highest_paid_actor
# # => "David Hasselhoff"
#
# pry(main)> knight_rider.actors
# # => ["David Hasselhoff", "William Daniels"]
