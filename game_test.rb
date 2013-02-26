require 'minitest/autorun'
require 'turn'
require_relative 'game'

class GameTest < MiniTest::Unit::TestCase
  def setup
    @game = Game.new
  end

  def test_gutter_game
    roll_many(20, 0)
    assert_equal(0, @game.score)
  end

  def roll_many(number_of, pins)
    number_of.times { @game.roll(pins) }
  end

  def test_all_ones
    roll_many(20, 1)
    assert_equal(20, @game.score)
  end
end
