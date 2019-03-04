# Part_A_spec.rb
require('minitest/autorun')
require('minitest/rg')
require_relative('../Part_A')

class TestStudent < MiniTest::Test
  def test_get_name
    student = Student.new("Amy","E29")
    assert_equal("Amy", student.get_name)
  end

  def test_get_cohort
    student = Student.new("Amy","E29")
    assert_equal("E29", student.get_cohort)
  end

  def test_set_name
    student = Student.new("Amy","E29")
    new_name = student.set_name("Alasdair")
    assert_equal("Alasdair", new_name)
  end

  def test_set_cohort
    student = Student.new("Amy","E29")
    new_cohort = student.set_cohort("E30")
    assert_equal("E30", new_cohort)
  end

  def test_talk
    student = Student.new("Amy","E29")
    speech = student.talk
    assert_equal("I can talk!", speech)
  end

  def test_fave_lang
    student = Student.new("Jaqulyn","C1")
    answer = student.fave_lang("Ruby")
    assert_equal("My fave language is Ruby.", answer)
  end

end
