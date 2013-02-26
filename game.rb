class Game
  def initialize
    @rolls = Array.new(22, 0)
    @current_roll = 0
  end

  def roll(pins)
    @rolls[@current_roll] = pins
    @current_roll += 1
  end

  def score
    score = 0
    @rolls.each do |roll|
      score += roll
    end
    score
  end
end
