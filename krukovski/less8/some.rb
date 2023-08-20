def name 
  return @name 
end
#геттер

def name=(name) 
  @name = name 
end 
#сеттер

def name?
  puts 'name'
end 
#true или false

class Animal 
  def initialize(name, age)
    @name = name
    @age = age
  end
end 

class Dog < Animal 
  def name=(name)
    @name = name
  end

  def show_name 
    @name
  end
end

dog1 = Dog.new('d', 10)
dog1.name = 'woof'
p dog1