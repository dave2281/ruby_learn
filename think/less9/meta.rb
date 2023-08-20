# class Foo 
#   def initialize(name)
#     @name = name
#   end

#   private def private_method 
#     puts 'hello'
#   end
# end 

module MyAttrAccessor 
  def my_attr_accessor(name)
    var_name = "@#{name}".to_sym
    define_method(name) { instance_variable_get(var_name) }
    define_method("#{name}=".to_sym) { |value| instance_variable_set(var_name, value)}
  end
end

class Test 
  extend MyAttrAccessor

  my_attr_accessor :dave
end