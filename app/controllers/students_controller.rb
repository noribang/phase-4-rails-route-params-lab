class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  # Action
  def show
    ## Talk to Model
    # Find by id attribute
    student = Student.find(params[:id])

    # View
    render json: student
  end

end
