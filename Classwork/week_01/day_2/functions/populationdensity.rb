def population_density(population,area,people,units)
  density = population / area
  return "Population density is #{density} #{people} per #{units}"
end

p population_density(1000.to_f,20000,"ants","sqm")
