# def find_short(s)
#   l = s.split(" ").min_by {|w| w.length}
#   return l.length
# end

# p find_short("bitcoin take over the world maybe who knows perhaps")

def minimal_number(str)
  l = str.split('').min
  return l
end

p minimal_number("1234567")
