class Bridge 
  def def initialize
    @status = nil
  end  

  def open
    @status = true
    @status
  end

  def close 
    @status = false
    @status
  end

  def status
    @status
  end
end

golden_gate = Bridge.new 

p golden_gate.status