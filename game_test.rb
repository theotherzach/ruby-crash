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

  def test_one_spare
    roll_spare
    @game.roll(3)
    roll_many(17, 0)
    assert_equal(16, @game.score)
  end

  def test_one_strike
    @game.roll(10) # strike
    @game.roll(3)
    @game.roll(4)
    roll_many(16, 0)
    assert_equal(24, @game.score)
  end

  def roll_spare
    @game.roll(5)
    @game.roll(5)
  end
end
