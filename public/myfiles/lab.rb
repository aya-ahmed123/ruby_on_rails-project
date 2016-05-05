#1) install ruby and rails.
#Using IRB
>>>>>>>>>>>>>>>>>>>>


# Class mehtod and instance method

class User
  def initialize(name='mostafa')
     @name = name
  end

  def self.name(name)
    "Hi " + name
  end

  def name=(name)
    @name = name
  end

  def name
    "Hi #{@name}"
  end
end

User.name
User.new.name

u = User.new
u.name = "Fawzy"
u.name


#variable_scope
$global_variable = 1 # Available everywhere

class MyClass
  @@class_variable = 2 # Available in instance methods and class methods

  def initialize
    @instance_variable = 3 # Available in instance methods
  end
  
  def print_variables
    local_variable = 4 # Available only in this method
    puts "global_variable=#{$global_variable}" +
      " class_variable=#{@@class_variable}" +
      " instance_variable=#{@instance_variable}" +
      " local_variable=#{local_variable}"
  end
end

object = MyClass.new
object.print_variables





# Proc

my_proc = Proc.new { |number| number*2 }
puts my_proc.call(5)


my_lambda = lambda { |number| number*2 }
puts "lambda class == #{my_lambda.class}"
puts my_lambda.call(5)

# 2) Problem 1: take an equation as 3 args from the user, two numbers and an operand. Output should be the result of that equation.

class Equation
  def self.operate_1(num1, num2, operand)
    eval("num1 #{operand} num2")
  end

  def self.operate_2(num1, num2, operand)
    eval("num1.to_i #{operand} num2.to_i")
  end

  def self.operate_3(num1, num2, operand)
    eval("num1.to_f #{operand} num2.to_f")
  end

  def self.operate_4(num1, num2, operand='+')
    operand = ['+', '-', '*', '/'].include?(operand) ? operand : '+'
    eval("num1.to_f #{operand} num2.to_f")
  end
end


Equation.operate_1 1, 5, '+'
Equation.operate_2 "xxx", 5, '+'
Equation.operate_3 1.5, 5.5, '+'



# 3) Problem 2: construct a person class. Take 3 args from the user, first name, last name and year of birth. Output should be " Hello <first name> <last name>. You are <age> years old. "


class Person
  require 'date'

  def initialize(first_name, last_name, year_of_birth)
    years = Date.today.year - Date.parse(year_of_birth).year
    puts "Hello #{first_name} #{last_name}. You are #{years} years old."
  end
end

Person.new("Mostafa", "Ragab", "03-08-1982")



# Ass, install rails env : rails -v 