class Rover
  # These are attributes you want to read outside of the class
  attr_accessor :x, :y, :direction

  # initialize the state of the Rover
  def initialize(x, y, direction)
    @x = x.to_i
    @y = y.to_i
    @direction = direction.to_s
  end
  # method for reading instructions
  def read_instructions(instructions)
    # do loop that takes each character from the instructions and then exectue the move
    instructions.each_char do |instruction|
      position
      if instruction == "M"
        move_forward
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
    puts "The Rover's current position is X=#{@x}, y= #{@y},facing #{@direction}"
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


end


rover1 = Rover.new(1, 2, "N")
rover1.read_instructions("LMLMLMLMM")
rover1.position

rover2 = Rover.new(3, 3, "E")
rover2.read_instructions("MMRMMRMRRM")
rover2.position