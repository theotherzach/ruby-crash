class Game
  def initialize
    @score = 0
  end

  def roll(pins) # roll calculates score
    @score += pins
  end

  def score # score does not calculate score
    @score
  end
end
