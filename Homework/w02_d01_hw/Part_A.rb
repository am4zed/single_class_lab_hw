class Student
  # attr_accessor :name, :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def get_name
    @name
  end

  def get_cohort
    @cohort
  end

  def set_name(name)
    @name = name
  end

  def set_cohort(cohort)
    @cohort = cohort
  end

  def talk
    return "I can talk!"
  end

  def fave_lang(lang)
    return "My fave language is #{lang}."
  end

end
