my_fruits = ["lime","orange","grapefruit","lemon"]
print my_fruits

my_fruits.push("mandarin")
print my_fruits
#adds item to end of array

my_fruits << "clemintine"
p my_fruits
#adds item to end of array

end_fruit = my_fruits.pop()
p my_fruits
#removes end item in array

p end_fruit * 2
#prints string of removed end item of array

my_fruits.shift("orange")
p my_fruits
#removes item from array - first item only?

my_fruits.unshift("pomelo")
p my_fruits
#adds item to index 0 of array

# pokemon = Array.new()
# pokemon[0] = "Bulbasaur"
# pokemon[24] = "Picachu"
# puts pokemon
