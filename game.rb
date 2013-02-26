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
    frame_index = 0
    10.times do
      if (@rolls[frame_index] + @rolls[frame_index + 1]) == 10 # spare
        score += 10 + @rolls[frame_index + 2]
        frame_index += 2
      else
        score += @rolls[frame_index] + @rolls[frame_index + 1]
        frame_index += 2
      end
    end
    score
  end
end
