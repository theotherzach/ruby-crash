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
    i = 0
    10.times do
      score += @rolls[i] + @rolls[i + 1]
      i += 2
    end
    score
  end
end
