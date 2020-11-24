class StudentsController < ApplicationController
  # before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
  end

  # gets 'students/:id/activate' do
  def activate
    @student = Student.find(params[:id])
    @student.active = @student.activate 
    @student.save
    # gets student_path(@student)
    redirect_to "/students/#{@student.id}"
  end

  # def set_student
  #   @student = Student.find(params[:id])
  # end

end