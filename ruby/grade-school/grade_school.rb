class School
  def initialize
    @population = {}
  end

  def add(name, grade)
    grade_string = grade.to_s
    @population[grade_string] ? @population[grade_string] << name : @population[grade_string] = [name]
    @population[grade_string].sort_by! { |student| student }
  end

  def students(grade)
    @population[grade.to_s] || []
  end

  def students_by_grade
    []
  end
end

module BookKeeping
  VERSION=3
end
