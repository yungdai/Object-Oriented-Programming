# A new Object called Point

# variables
# instance variables use @
# global variables use $
# local variables
# class variables use @@

# This is a variable
# my_variable = "some value"

# This is a global variable, it has a $ sign in front of it.  It is accessible throughout the entire program
$my_variable = "some value"



class Point
  # class variables are states within the blueprint themselves, they are defined by @@
  @@my_class_variable = "You can access me from the Class Level"

  # # this method is to call X
  # def x
  #   @x
  # end
  #
  # #this method is to call y
  # def y
  #   @y
  # end
  # these are called writer methods

  # # this is the exact same code as above
  # attr_reader :x, :y
  #
  # # This is a writer method
  # # def x=(new_x)
  # #   @x = new_x
  # # end
  # #
  # # def y=(new_y)
  # #   @y = new_y
  # # end
  #
  # # this is the same as the code above
  # attr_writer :x, :y

  # you can skip attr_reader/attr_writer and just use this
  attr_accessor :x, :y

  def initialize(x, y)
    # setting the state of the object with local variables
    # these variables are only local in the object
    # x = x
    # y = y

    # instance variables are set with the @ symbol

    @x = x # this can be accessed anywhere inside the object
    @y = y
  end

  # to display nicely you can use a new method for it
  # def display
  #   "(#{@x}, #{@y})"
  # end

  #or you can just write it this way in ruby
  def to_s
    "(#{@x}, #{@y})"
  end

  # Adding method to make adding the oints easier
  def add(point)
    Point.new(@x + point.x, @y + point.y)
  end
  # you can in theory make it easier by naming the method "+" instead ot make it easier to call and make sense
  # example:
  # def +(point)
  #   Point.new(@x + point.x, @y + point.y)
  # end
end


# New Line Class
class Line
  attr_accessor :point1, :point2
  def initialize(point1, point2)
    @point1 = point1
    @point2 = point2
  end

  def to_s
    "#{@point1} == #{@point2}"
  end
end

# New Vector Class that inherits from Line
class Vector < Line
  attr_accessor :direction

  def initialize(point1, point2, direction)
    @point1 = point1
    @point2 = point2
    @direction = direction
  end

  def to_s
    super + " -> #{@direction}"
  end
end


# this is a module that can be called into objects for later.
module BeingOnEarth
  def gravity
    @gravity = gravity
  end
end

class Rock
  include BeingOnEarth
end

class Person
 include BeingOnEarth
end

# this is a module for GridSystem
module GridSystem
  class Point

  end

  class Vector

  end
end

puts "To call a module you do the following"
point = GridSystem::Point.new
puts point
# Creating an instance of the Object of the class
point1 = Point.new(1, 2)
point2 = Point.new(4, 5)

puts "Creating a new line"
line = Line.new(point1, point2)
puts line

puts "Creating a new vector"
vector = Vector.new(point1, point2, "N")
puts vector

puts "This is the nice display of point1"
puts point1.display


puts "Displaying the points of x, y"
puts point1.x
puts point1.y

puts "This is how out enter in 4 as a x point"
point1.x = 4
puts point1



# adding two points together
# added_point =  (point1.x + point2.x, point1.y + point2.y)
# added_point2 = point1.add(point2)
