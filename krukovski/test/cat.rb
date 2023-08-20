class Cat
  def initialize(age)         # age = 12
    @cat_age = to_cat_years(age)  # переменная @age = метод to_cat_years(аргумент метода initialize "age = 12" )
  end

  def to_cat_years(human_age)
    return human_age.to_f / 4 
  end
end

cat1 = Cat.new(12)

p cat1