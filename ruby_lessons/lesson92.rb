variable = 2

class Check 
    def initialize(variable)
      @variable = variable
    end
    def checkVariable
        return "Variable 'variable': #{defined?(variable)}"
        return "Variable '@variable': #{defined?(@variable)}"
    end 
end

check = Check.new(2)
check.checkVariable

puts 'Вне класса:'
puts "Переменная 'variable': #{defined?(variable)}"
puts "Переменная '@variable': #{defined?(@variable)}"