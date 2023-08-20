module NameSpace 
  class Animal 
    def initialize(name)
      @name = name
    end
  end
end

animal1 = NameSpace::Animal.new("dave")
puts animal1.inspect