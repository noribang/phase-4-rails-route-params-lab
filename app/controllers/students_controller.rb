class StudentsController < ApplicationController

  def index
    # students = Student.all

    # Find all and by query parameter
    students = if params[:name]
                Student.by_name(params[:name])
               else
                Student.all
               end
    # View 
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
