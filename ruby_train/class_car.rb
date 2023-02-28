class Car_for_sale 
  attr_accessor :name, :engine, :wheels, :color, :quality, :status

  def initialize(name, engine, wheels, color, quality, status)
    @status = status
    @name = name
    @engine = engine 
    @wheels = wheels
    @color = color 
    @quality = quality
  end

  def show_status 
    @status
  end

  def show_name
    @name
  end

  def show_quality 
    @quality
  end
  
  def show_wheels 
    @wheels
  end
  
  def show_color 
    @color
  end
  
  def show_engine
    @engine
  end

  def change_name=(name) 
    @name = name
  end

  def change_quality=(quality)
    @quality = quality
  end
  
  def change_wheels=(wheels)
    @wheels = wheels
  end
  
  def change_color=(color)
    @color = color
  end
  
  def change_engine=(engine)
    @engine = engine
  end
  
  def change_status=(status)
    @status = status
  end

  def if_input(input)
    if input == 'Buy'
      @status = 'Bought'
    end
  end
end

car_BMV = Car_for_sale.new('BMV I8', 'v8', 'custom', 'red&blue', '7/10', 'Active')

input = 'Buy'

p car_BMV.show_status
p car_BMV.if_input(input)
p car_BMV.show_status