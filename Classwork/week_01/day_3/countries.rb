countries = {
  uk: {
    capital: "London",
    population: 123456789,
    codeclan_locations: ["Edinburgh","Glasgow"]
  },
  spain: {
    capital: "Madrid",
    population: 987654321
    }
}

p countries[:uk]
p countries[:uk][:capital]
p countries[:spain]
p countries[:spain][:capital]
p countries[:uk][:codeclan_locations][1]
