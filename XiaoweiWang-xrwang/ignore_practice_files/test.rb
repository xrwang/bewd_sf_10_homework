require 'pry'


#name the class
#determine what attributes ie height or age for a person and put into attr_accessor
#have what is called an instance factory -- ability to create instances of a class
#the above all impact state

#read the name and the origin of the robot -- the getters and setters
#ability to get values and set values, baiscally
#======== state is what it is. state of the instance, the origin
#identity is what kind of object it is

#behavior vs state. all objects have behavior and state. the stuff you do.
#instance method, class method and private method
#an instance method defines a specific behavior or set of behaviors
#class method is a method that can not be accessed by an instance of the class. it is a method that works
#and provides a behvaior that is in some how beneficial to the overall classed. can be accessed or called
#outside of the class


class Person
#attributes :name, :age, :hometown

#these attrs are basically code generators
#attrreader makes getters for all attributes you define
attr_reader :name, :age, :hometown

#attrwriters makes setters for all attributes you define
attr_writer
#attraccessor does both
attr_accessor



#behind the scenes connects to a .new which gives it ability to create new instance of class
#attributes are not determined by attr accessor. they are determined here.
def initialize(name, age, hometown)
  @name = name
  @age = age
  @hometown = hometown
end

#instance method gives instance of class with behavior
def fly
  puts "hi hitestign"
end

#class method starts with self.name of class -- thats how you can tell it's not a normal instance method
#an instance method never has self.name, ever.
#a class method is usually used when you need to have access to behavior that does not involve one instance of your class
#ie you need to create 100 robots... but you don't need that for something that's an instance. ie you have a database and you only
#wanted to get red robots. robot.where and you pass in color red...

def self.random_test_maker
end

#getter method
# def name
#   @name
# end
#
#setter method
# def name = value
#   @name=value
# end
end
binding.pry
brad = Person.new("Brad","50","New Orleans")
