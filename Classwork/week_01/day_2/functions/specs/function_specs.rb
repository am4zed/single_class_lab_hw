require('minitest/autorun')
require('minitest/rg')
require_relative('../functions.rb')
require_relative('../adding.rb')
require_relative('../populationdensity.rb')

class FunctionTest < MiniTest::Test
  def test_greet()
    result = greet("Alasdair","afternoon")
    assert_equal("Good afternoon, Alasdair", result)
  end

  def test_add__positive
    result = add(5,3)
    assert_equal(8,result)
  end

  def test_add__negative
    result = add(-5,-3)
    assert_equal(-8,result)
  end

  def test_population_density
    result = population_density(1000,1000,"people","sqm")
    assert_equal("Population density is 1 people per sqm")
  end
end
