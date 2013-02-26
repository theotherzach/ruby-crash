require 'minitest/autorun'
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

  def test_one_spare
    skip 'Need to score 2 balls at once'
    @game.roll(5)
    @game.roll(5) # spare
    @game.roll(3)
    roll_many(17, 0)
    assert_equal(16, @game.score)
  end
end
