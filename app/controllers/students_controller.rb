class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    set_student
      @active = "This student is currently active."
      @inactive = "This student is currently inactive."
  end
  
  def activate
    set_student
    if @student.active == false
      @student.active = true
      @student.save 
    else  
      @student.active = false 
      @student.save 
    end 
    redirect_to "/students/#{@student.id}"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end