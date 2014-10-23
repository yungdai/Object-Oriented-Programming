# 4. Both the instructor and the student have names. We know that instructors and students
# are both people. Create a parent Person class that contains the attribute name and
# an initializer to set the name.

class Person
  def initialize(name)
    @name = name
  end

  # 5. Both the instructor and the student should also be able to do a greeting, like "Hi,
  # my name is #{name}". Where's the best place to put this common method?

  def greeting
    puts "Hi, my name is #{@name}."
  end
end

# 1. Let's start by creating two classes: one called Student and another called Instructor.
class Student < Person
  # 2. The student class has a method called learn that outputs "I get it!".
  def learn
    puts "I get it!"
  end

end

class Instructor < Person
  # 3. The instructor class has a method called teach that outputs "Everything in Ruby
  # is an Object".

  def teach
    puts "Everything in Ruby is an Object"
  end
end

puts "6. Create an instance of Instructor whose name is 'Chris' and call his greeting."
chris = Instructor.new("Chris")
chris.teach
puts ""

puts "7. Create an instance of Student whose name is 'Cristina' and call her greeting."
christina = Student.new("Christina")
christina.learn
puts ""

# 8. Call the teach method on your instructor instance and call the learn method on your
# student. Next, call the teach method on your student instance. What happens? Why doesn't
# that work? Leave a comment in your program explaining why.
puts "Calling Chris' name and Greeting"
chris.greeting
chris.teach

# The chris.Instructor Object has inherited the Parent Class Person with the name
# attribute, and the greeting method within that parent object.  The child object has
# a new attribute called teach which chris can call.

puts ""
puts "Calling Christina's name and Greeting"
christina.greeting
christina.learn

# christina.teach
# christina.teach doesn't work, because christina is an instanace of the Student object
# and not the Teach object.