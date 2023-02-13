# def fake_bin(string)
#   a = string.split('')
#   b = []
#   a.each do |number|
#     if number.to_i < 5
#       number = 0
#       b << number
#     else
#       number = 1
#       b << number
#     end
#   end
#   return b.join
# end

# def fake_bin(s)
#   s.gsub(/[0-4]/, '0').gsub(/[5-9]/, '1')
# end



# def fake_bin(s)
#   s.tr("123456789", "000011111")
# end

# p fake_bin('645763456236112345463743')









# Учитывая строку цифр, вы должны заменить любую цифру ниже 5 на «0»,
#  а любую цифру 5 и выше на «1». Верните полученную строку.
