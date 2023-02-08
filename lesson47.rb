class OldAndYung
  def initialize(name, middle_name, age)
    @name = name
    @middle_name = middle_name
    @age = age
  end

  def is_old?
    if @age <= 60
      puts @name, @middle_name
      return false
    elsif @age >= 60
      puts @name, @middle_name
      return true
    end
  end
end

human1 = OldAndYung.new("Mishail", "Pushkin", 72)
human2 = OldAndYung.new("Dmitry", "Zolotenko", 26)

p human1.is_old?
p human2.is_old?
