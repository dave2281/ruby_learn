def spin_words(string)
  strings = string.split(" ")
  phrase = []
  strings.each  {|s|s.length >= 5 ? phrase << s.reverse! : phrase << s}
  return phrase.join(" ")
end
