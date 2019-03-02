@customers = [
  {
    name: "Alice",
    pets: [],
    cash: 1000
  },
  {
    name: "Bob",
    pets: [],
    cash: 50
  }
]

@new_pet = {
  name: "Bors the Younger",
  pet_type: :cat,
  breed: "Cornish Rex",
  price: 100
}

@pet_shop = {
  pets: [
    {
      name: "Sir Percy",
      pet_type: :cat,
      breed: "British Shorthair",
      price: 500
    },
    {
      name: "King Bagdemagus",
      pet_type: :cat,
      breed: "British Shorthair",
      price: 500
    },
    {
      name: "Sir Lancelot",
      pet_type: :dog,
      breed: "Pomsky",
      price: 1000,
    },
    {
      name: "Arthur",
      pet_type: :dog,
      breed: "Husky",
      price: 900,
    },
    {
      name: "Tristan",
      pet_type: :dog,
      breed: "Basset Hound",
      price: 800,
    },
    {
      name: "Merlin",
      pet_type: :cat,
      breed: "Egyptian Mau",
      price: 1500,
    }
  ],
  admin: {
    total_cash: 1000,
    pets_sold: 0,
  },
  name: "Camelot of Pets"
}


def sell_pet_to_customer(pet_shop, pet, customer)

  # add_pet_to_customer(customer, pet) #17

  customer[:pets].push(pet)
  p customer[:pets]
  #
  # pet_shop[:admin][pets_sold] = 1
  # customer[:cash] = customer[:cash] - pet[:price]
  # pet_shop[:admin][:total_cash] = pet_shop[:admin][:total_cash] + pet[:price]
end

p @pet_shop[:pets][3]
p @customers[0][:pets]
@customers[0][:pets].push(@pet_shop[:pets][3])
p @customers[0][:pets]
# sell_pet_to_customer(@pet_shop, @pet_shop[:pets][3], @customer[0])
