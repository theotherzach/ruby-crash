require 'minitest/autorun'
require 'turn'
require_relative 'game'

class GameTest < MiniTest::Unit::TestCase
  def setup
    @game = Game.new
  end

  def test_gutter_game
    20.times { @game.roll(0) }
    assert_equal(0, @game.score)
  end

  def test_all_ones
    20.times { @game.roll(1) }
    assert_equal(20, @game.score)
  end
end
