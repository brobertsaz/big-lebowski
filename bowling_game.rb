class BowlingGame
  require 'pry'
  attr_accessor :frames

  def initialize(*frames)
    @score = 0
    @frames = frames
    @first_frame = @frames.first
  end

  def frame_score
    if is_strike?

    elsif is_spare?

    else
      @first_frame[0] + @first_frame[1]
    end
  end

  def is_spare?
    @first_frame.sum == 10
  end

  def is_strike?
    @first_frame[0] == 10
  end

end