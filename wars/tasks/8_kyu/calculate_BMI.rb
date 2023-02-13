def bmi(weight, height)
  bmi = (weight / height**2).round(1)
  p bmi
  if bmi <= 18.5
    "Underweight"
  elsif bmi <= 25.0
    "Normal"
  elsif bmi <= 30.0
    "Overweight"
  elsif bmi > 30
    "Obese"
  end
end
p bmi()
