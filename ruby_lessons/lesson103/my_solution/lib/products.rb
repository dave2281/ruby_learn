class Products
  attr_reader :name, :director_name_surname, :date_production, :price
  
  def initialize(hash_or_path)
    regexp = /[a-z]+\/[a-z]+\.txt/
    if hash_or_path =~ regexp
      @path = hash_or_path
      file = File.read(@path, "r:UTF-8" ) 
      @lines = file.readlines 
      lines.each_with_index do |line, index|
        if line == ""
          lines.delete_at!(index)
        elsif line == "\n"
          lines.delete_at!(index)
        end
      end
      @name = @lines[0]
      @director_name_surname = @lines[1]
      @date_production = @lines[2]
      @price = @lines[3]
    else
      @name = hash_or_path[:name]
      @director_name_surname = hash_or_path[:director_name_surname]
      @date_production = hash_or_path[:date_production]
      @price = hash_or_path[:price]
    end
  end

  def from_file
    
  end

  # def check_amount
  #   if @amount == 0 
  #     "К сожалению товар на складе закончился"
  #   end
  # end
end