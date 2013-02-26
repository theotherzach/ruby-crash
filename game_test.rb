require 'minitest/autorun'
require_relative 'game'

class GameTest < MiniTest::Unit::TestCase
  def test_gutter_game
    game = Game.new
    20.times { game.roll(0) }
    assert_equal(0, game.score)
  end
end
