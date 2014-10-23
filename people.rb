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



# 6. Create an instance of Instructor whose name is "Chris" and call his greeting.
chris = Instructor.new("Chris")
chris.teach


