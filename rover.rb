class Rover
  attr_reader :x, :y, :direction, :instructions

  # initialize the state of the Rover
  def initialize(x, y, direction)
    @x = x.to_i
    @y = y.to_i
    @direction = direction.to_s
  end

  #  This is the expected formatted output
  def position
    "#{@x} #{@y} #{@direction}"
  end

  # Instructions to tell the Rover how to move
  def turn_left
    if @direction == "N"
      @direction = "W"
    elsif @direction == "W"
      @direction = "S"
    elsif @direction == "S"
      @direction = "E"
    else
      @direction = "N"
    end
  end

  def turn_right
    if @direction == "N"
      @direction = "E"
    elsif @direction == "E"
      @direction = "S"
    elsif @direction == "S"
      @direciton = "W"
    else
      @direction = "N"
    end

  end

  def move_forward
    if @direction == "N"
      @y += 1
    elsif @direction == "E"
      @x += 1
    elsif @direciton == "S"
      @y -= 1
    else
      @x -= 1
    end
  end

  # method for reading instructions
  def read_instruction(instructions)


  end

end


rover1 = Rover.new(1, 2, "N")
