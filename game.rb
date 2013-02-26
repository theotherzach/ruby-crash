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
      if strike?(frame_index)
        score += strike_bonus(frame_index)
        frame_index += 1
      elsif spare?(frame_index)
        score += spare_bonus(frame_index)
        frame_index += 2
      else
        score += sum_open_frame(frame_index)
        frame_index += 2
      end
    end
    score
  end

  private
  def strike?(frame_index)
    @rolls[frame_index] == 10 # strike
  end

  def sum_open_frame(frame_index)
    @rolls[frame_index] + @rolls[frame_index + 1]
  end

  def spare_bonus(frame_index)
    10 + @rolls[frame_index + 2]
  end

  def strike_bonus(frame_index)
    10 + @rolls[frame_index + 1] + @rolls[frame_index + 2]
  end

  def spare?(frame_index)
    (@rolls[frame_index] + @rolls[frame_index + 1]) == 10
  end
end
