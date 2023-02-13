def find_it(seq)
  seq.each do |num|
    if seq.count(num).even?
      return num
    end
  end
end

p find_it([1,1,2,-2,5,2,4,4,-1,-2,5])
