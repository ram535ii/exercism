class School
  def initialize
    @cohorts = []
  end

  def add(name, grade)
    if cohorts = find_grade(grade)
      cohorts[:students] << name
      cohorts[:students].sort!
    else
      @cohorts << {grade: grade, students: [name]}
      @cohorts.sort_by! { |cohort| cohort[:grade] }
    end
  end

  def students(grade)
    grade = find_grade(grade)
    grade ? grade[:students] : []
  end

  def students_by_grade
    @cohorts
  end

  private
  def find_grade(grade)
    @cohorts.find { |cohort| cohort[:grade] == grade }
  end
end

module BookKeeping
  VERSION=3
end
