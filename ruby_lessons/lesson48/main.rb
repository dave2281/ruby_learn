require_relative 'bodybuilder'

bodybuilder1 = Bodybuilder.new('John')

5.times do
  bodybuilder1.pump('biceps')
end

7.times do
  bodybuilder1.pump('triceps')
end

10.times do
  bodybuilder1.pump('deltovidka')
end

p bodybuilder1.stats
