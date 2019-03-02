avengers = {
  ironman: {
    name: "Tony Stark",
    moves: {
      punch: 10,
      kick: 100
    }
  },
  hulk: {
    name: "Bruce Banner",
    moves: {
      smash: 1000,
      roll: 500,
    }
  }
}

p avengers[:ironman]
p avengers[:ironman][:name]
p avengers[:ironman][:moves][:punch]
p avengers[:ironman][:moves][:kick]

p avengers[:hulk]
p avengers[:hulk][:name]
p avengers[:hulk][:moves][:smash]
p avengers[:hulk][:moves][:roll]
