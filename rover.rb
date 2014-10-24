class Rover
  # These are attributes you want to read outside of the class
  attr_accessor :x, :y, :direction, :plateau_x, :plateau_y

  # initialize the state of the Rover
  def initialize(x, y, direction, plateau_x, plateau_y)
    @x = x.to_i
    @y = y.to_i
    @direction = direction.to_s
    @plateau_x = plateau_x.to_i
    @plateau_y = plateau_y.to_i
  end

  # method for reading instructions
  def read_instructions(instructions)
    # do loop that takes each character from the instructions and then exectue the move
    instructions.each_char do |instruction|
      if instruction == "M"
        #check to see if you're going to fall off a cliff before you move forward
        plateau_check
      elsif instruction == "L"
        turn_left
      elsif instruction == "R"
        turn_right
      else
        puts "Instruction not recognised!!"
      end
    end
  end

  #  This is the expected formatted output
  def position
    puts "The Rover's current position is x=#{@x}, y= #{@y}, facing #{@direction}"
  end

  # Instructions to tell the Rover how to move
  def turn_left
    if @direction == "N"
      @direction = "W"
    elsif @direction == "W"
      @direction = "S"
    elsif @direction == "S"
      @direction = "E"
    elsif @direction == "E"
      @direction = "N"
    end
  end

  def turn_right
    if @direction == "N"
      @direction = "E"
    elsif @direction == "E"
      @direction = "S"
    elsif @direction == "S"
      @direction = "W"
    elsif @direction == "W"
      @direction = "N"
    end
  end

  def move_forward
    if @direction == "N"
      @y += 1
    elsif @direction == "E"
      @x += 1
    elsif @direction == "S"
      @y -= 1
    elsif @direction == "W"
      @x -= 1
    end
  end

  # Checks with the plateau to make sure it doesn't fall of the cliff
  def plateau_check
    if @x < 0 || @x > @plateau_x
      puts "Cannot move here, because it will be outside of the plateau"
    elsif @y < 0 || @y > @plateau_y
      puts "Cannot move here, because it will be outside of the plateau"
    else
      move_forward
    end
  end
end


#Rover 1 instructions:
rover1 = Rover.new(1, 2, "N", 5, 5)
rover1.read_instructions("LMLMLMLMM")
rover1.position

#Rover 2 instructions:
rover2 = Rover.new(3, 3, "E", 5, 5)
rover2.read_instructions("MMRMMRMRRM")
rover2.position