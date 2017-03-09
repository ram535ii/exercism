class School
  def initialize
    @cohorts = Hash.new { [] }
  end

  def students(grade)
    @cohorts[grade].sort
  end

  def add(name, grade)
    @cohorts[grade] <<= name
  end

  def students_by_grade
    @cohorts.keys.sort.map { |grade| {grade: grade, students: students(grade)} }
  end
end

module BookKeeping
  VERSION=3
end
