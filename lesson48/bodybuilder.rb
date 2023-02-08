class Bodybuilder
  def initialize(name)
    @biceps = 0
    @triceps = 0
    @deltovidka = 0
    @name = name
  end

  def pump(muscle)
    case muscle
    when 'biceps'
      @biceps += 1
    when 'triceps'
      @triceps += 1
    when 'deltovidka'
      @deltovidka +=1
    end
  end

  def stats
    puts "Имя бодибилдера #{@name}\nРазмер бицепса: #{@biceps}\nРазмер трицепса: #{@triceps}\nРазмер дельтовидки: #{@deltovidka} "
  end
end
