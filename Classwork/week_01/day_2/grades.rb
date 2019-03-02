score = 4


grade = "fail"
grade = "pass" if (score > 3) #guard
p grade

grade = score > 3 ? "pass" : "fail" #ternary

#grade = case score
#when 8..10
#    "A"
#  when 6..7
#    "B"
#  when 4..5
#    "C"
#  else
#    "F"
#end

#Below doesn't work
#if grade == ( "A" || "B" || "C" )
#  p "Your grade is " + grade ", congratulations!"
#else
#  p "Your grade is " + grade ", better luck next time!"
#end
