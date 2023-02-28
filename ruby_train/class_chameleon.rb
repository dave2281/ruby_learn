class Chameleon
  def initialize(color)
    @color = color
  end

  def change_color=(color_of_hameleon)
    @color = color_of_hameleon
  end

  def show_color
    @color
  end
end

chameleon1 = Chameleon.new("red")

chameleon1.change_color = "blue"

p chameleon1.show_color


# Father solution
#
# class Chameleon

#   def initialize(color)
#       @color = color
#   end

#   def color
#       @color           
#   end

#   def color=(color)
#       @color = color
#   end

# end

# piper = Chameleon.new("зелений")
# puts "Спочатку я #{piper.color}"
# piper.color = "синій"
# puts "Тепер я #{piper.color}"