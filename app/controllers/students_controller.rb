class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate_student_path
    @student = Student.find(params[:id])
    @student.active = !@student.active
    redirect_to students_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
