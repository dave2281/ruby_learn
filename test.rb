# arr = ['dave', 431, [213, 123]]

# a, b, c = arr

# p a 
# p b   
# p c

# dave = nil 
# jake = 'jake'

# p dave ||= 'Dave'
# p jake ||= 'Jake'
# p mike ||= 'Mike'

# class BasicObject 
#   alias_method :kvas, :class
# end 

# class Piwo 
#   def intialize(name)
#     @name = name 
#   end

#   def showName 
#     @name 
#   end
# end 

# napitok = Piwo.new('obolon')

# p napitok.showName.kvas

class Dog 
  attr_reader :name, :klichka

  def initialize(name, klichka)
    @name = name 
    @klichka = klichka
  end

  def sound 
    if @name == 'Charlie'
      return 'Woof-Woof, im Charlie'
    end
  end 

  def four_paws 
    '4 paws'
  end
end

class Bouldog < Dog 
  def sound 
    super
  end 
  
  def four_paws
    'i have 2 paws'
  end 
end 

bouldog1 = Bouldog.new('Charlie', 'Charka')

p bouldog1.sound
