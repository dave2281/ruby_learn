# class Class
#   alias_method :kvas, :class
# end

# dave = Class.new

# p dave.kvas

def method(options = {})
  @name = options[:name]  
  @age = options[:age]
end

p method(name: 'dave', age: 12)