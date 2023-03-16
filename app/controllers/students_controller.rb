class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student
  end

  def search
    @students = Student.where("first_name LIKE ? OR last_name LIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")

  end

end
