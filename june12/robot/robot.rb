

class Robot

  def initialize
    @letter_holder = ('A'..'Z').to_a + ('0'..'9').to_a
    @use_counter = 0
    @name = ""
  end

  def array_shuffler(x)
     x.shuffle
  end

  def character_grabber(x)
     x[0..4].join
  end

  def name
    if @use_counter < 1
      @name = character_grabber(array_shuffler(@letter_holder))
      @use_counter += 1
      @name
    else
      @use_counter += 1
      @name
    end
  end

  def reset
    @use_counter = 0
  end

  def usage
    @use_counter
  end
end




robot1 = Robot.new
puts robot1.name


#  name_tray = ((('A'..'Z').to_a + ('0'..'9').to_a).shuffle!)[0..4]