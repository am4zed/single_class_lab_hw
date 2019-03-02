#1
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

#2
def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

#3
def add_or_remove_cash(pet_shop, value)
  return pet_shop[:admin][:total_cash] += value
end

#4
#uses [#3]

#5
def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

#6
def increase_pets_sold(pet_shop, pets_sold)
  pet_shop[:admin][:pets_sold] += pets_sold
end

#7
def stock_count(pet_shop)
  return pet_shop[:pets].count
end

#8
def pets_by_breed(pet_shop, type)
  pet_type_array = Array.new
  pet_shop[:pets].each{|hash| pet_type_array.push(hash[:breed]) if hash[:breed] == type }
  return pet_type_array
end

#9
#uses [#8]

#10
def find_pet_by_name(pet_shop, name)
  pet_shop[:pets].each{|hash| return pet_shop[:pets][pet_shop[:pets].index(hash)] if hash[:name] == name }
  return nil
end

#11
# uses [#10]

#12
def remove_pet_by_name(pet_shop, name)
      pet_shop[:pets].each{|hash| pet_shop[:pets].delete_at(pet_shop[:pets].index(hash)) if hash[:name] == name}
end

#13
def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

#14
def customer_cash(customer)
  return customer[:cash]
end

#15
def remove_customer_cash(customer, value)
  customer[:cash] -= value
end

#16
def customer_pet_count(customer)
  return customer[:pets].count
end

#17
def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

#18
def customer_can_afford_pet(customer, new_pet)
  new_pet[:price] > customer[:cash] ? false : true
end

#19
#uses [#18]

#20
def sell_pet_to_customer(pet_shop, pet, customer)
  return if pet == nil || pet[:price] > customer[:cash]
  customer[:pets].push(pet)
  pet_shop[:admin][:pets_sold] += 1
  customer[:cash] -= pet[:price]
  pet_shop[:admin][:total_cash] += pet[:price]
end

#21
#uses [#20]

#22
#uses [#21]
