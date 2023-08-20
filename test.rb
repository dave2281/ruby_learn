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

class BasicObject 
  alias_method :kvas, :class
end 

class Piwo 
  def intialize(name)
    @name = name 
  end

  def showName 
    @name 
  end
end 

napitok = Piwo.new('obolon')

p napitok.showName.kvas