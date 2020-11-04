class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
    binding.pry
  end

  def activate
    @student = Student.find_by(id: params[:id])
    @student.toggle(:active).save
    redirect_to student_path(@student)
  end


  private

    def set_student
      @student = Student.find_by(id: params[:id])
    end
end