require 'pry-byebug'

class School

  def initialize(name)
    @name = name
    @roster = {}
    @classes = {}
  end

  attr_accessor :roster

  def add_student(student, grade)
    if @roster[grade].class == Array
      @roster[grade] << student
    else
      @roster[grade] = [student]
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each do |grade, student_array|
      @roster[grade] = student_array.sort!
    end
  end

end
