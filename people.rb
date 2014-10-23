# 1. Let's start by creating two classes: one called Student and another called Instructor.
class Student
  # 2. The student class has a method called learn that outputs "I get it!".
  def learn
    puts "I get it!"
  end

end

class Instructor
  # 3. The instructor class has a method called teach that outputs "Everything in Ruby
  # is an Object".
  def teach
    puts "Everything in Ruby is an Object"
  end
end

# 4. Both the instructor and the student have names. We know that instructors and students
# are both people. Create a parent Person class that contains the attribute name and
# an initializer to set the name.

class Person
  def initialize(name)
    @name = name
  end
end