class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades 
    descending_grades = Student.all.order(grade: :desc)
    render json: descending_grades
  end

  def highest_grade
    best_student = Student.all.order(grade: :desc).first
    render json: best_student
  end

end
