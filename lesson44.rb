class Bridge
  def initialize
    @opened = false
    p "Мост создан"
  end

  def open
    @opened = true
    p "мост открыт"
  end

  def close
    @opened = false
    p "мост закрыт"
  end

  def is_open?
    p @opened
  end
end

bridge = Bridge.new
p bridge

closed_bridge = bridge.close
p closed_bridge
