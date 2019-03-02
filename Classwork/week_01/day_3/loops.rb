# secret_number = 5
#
# p "Guess the secret number: "
# guess = gets.chomp.to_i
#
# while (guess != secret_number)
#   p "Wrong, too high!" if guess > secret_number
#   p "Wrong, too low!" if guess < secret_number
#   guess = gets.chomp.to_i
# end
#
# p "Well done, you guess the correct number!"
#
# # end (1==1)
# #   p "Running"
# # end
#
# while (true)
#   p "Type something: "
#   input = gets.chomp
#   break if input == "no thanks"
#   p "You typed: #{input}"
# end
#
# sum = 0
#
# numbers = [1,2,3,4,5]
# for number in numbers
#   sum += number
# end
#
# p sum

chickens = [
  { name: "Margaret", age: 2, eggs: 0 },
  { name: "Hetty", age: 1, eggs: 2 },
  { name: "Henrietta", age: 3, eggs: 1 },
  { name: "Audrey", age: 2, eggs: 0 },
  { name: "Mabel", age: 5, eggs: 1 },
]

for chicken in chickens
  if (chicken[:eggs] > 0)
    p "#{chicken[:name]} has #{chicken[:eggs]} eggs"
  end
end

#
# total_number_of_eggs = 0
# for chicken in chickens
#   total_number_of_eggs += chicken[:eggs]
# end
# p total_number_of_eggs
#
# #
# for chicken in chickens
#   p "#{chicken[:name]} is #{chicken[:age]} years old."
# end
