class Shape
end

class Square < Shape
  def initalize (side_length)
    @side_length = side_length
  end
  def area
    @side_length * @side_length
  end
  def perimeter
    @side_length*4
  end
end


class Triangle < Shape
  def initialize (base_width, height, side1,side2,side3)
    @base_width = base_width
    @height = height
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  def area
    @base_width * @height /2
  end
  def perimeter
    @side1 + @side2 + @side3
  end
end

def calculator
  puts "hi! please choose a square or triangle"
  answer = gets.chomp
  if answer == "triangle"
    puts "you chose a triangle!"
    triangle_maker
  else
    puts "you chose a square"
  end
end

def triangle_maker
  messages = ["enter base_width","enter height","enter side1", "enter side2","enter side3"]
  puts "ok please enter the base_width"
  base_width=gets.chomp.to_i
  puts "ok please enter the height"
  height=gets.chomp.to_i
  puts "ok please enter the lenght of side1"
  side1=gets.chomp.to_i
  puts "ok please enter the length of side2"
  side2=gets.chomp.to_i
  puts "ok please enter the length of side3"
  side3=gets.chomp.to_i
  user_triangle = Triangle.new(base_width, height, side1, side2, side3)
  puts "the perimeter is #{user_triangle.perimeter} and the area is #{user_triangle.area}"
end

calculator
