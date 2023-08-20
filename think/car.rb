class Car 
  attr_accessor :current_rpm

  def def initialize
    current_rpm = 0
  end
  
  def start_engine 
    start_engine! if engine_stopped? 
  end

  def engine_stopped?
    current_rpm.zero?
  end 

  def start_engine! 
    current_rpm = 700
  end



end 