class Game
  def initialize
    @score = 0
    @rolls = Array.new(22, 0)
    @current_roll = 0
  end

  def roll(pins) # roll calculates score
    @score += pins
    @rolls[@current_roll] = pins
    @current_roll += 1
  end

  def score # score does not calculate score
    @score
  end
end
