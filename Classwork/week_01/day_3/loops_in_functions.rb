chickens = [
  { name: "Margaret", age: 2, eggs: 0 },
  { name: "Hetty", age: 1, eggs: 2 },
  { name: "Henrietta", age: 3, eggs: 1 },
  { name: "Audrey", age: 2, eggs: 0 },
  { name: "Mabel", age: 5, eggs: 1 },
]

# def count_eggs(chickens)
#   total_number_of_eggs = 0
#   for chicken in chickens
#     total_number_of_eggs += chicken[:eggs]
#   end
#   return total_number_of_eggs
# end
#
# number_of_eggs = count_eggs(chickens)
#
# p "We have #{number_of_eggs} eggs."

def find_chicken_by_name(chickens, name)
  for chicken in chickens
    if (chicken[:name] == name)
      return chicken
    end
  end
  return nil
end

p find_chicken_by_name(chickens, "Audrey")
p find_chicken_by_name(chickens, "Pikachu")
