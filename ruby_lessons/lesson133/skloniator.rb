class Skloniator
    def self.sklon(input_user, one, two, three)
      two_nums = input_user % 100
      last = input_user % 10

      return one if last == 1 and two_nums != 11
      return two if (2..4).include?(last)
      return three if (11..14).include?(input_user % 100)
      three
    end
end

