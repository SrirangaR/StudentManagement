class StudentsController < ApplicationController

  before_action :find_student, only: [:show, :edit, :update, :destroy ]


  def index
    @students = Student.all.order(:desc)
  end

  def show
    @stu = Student.find(params[:id])
  end

  def new
    @stu = Student.new
  end

  def create
    @stu = Student.new(student_params)

    if @stu.save
      redirect_to @stu
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @stu.update(student_params)
      redirect_to @stu
    else
      render 'edit'
    end
  end

  def destroy
    @stu.destroy
    redirect_to students_path
  end

  private

    def find_student
        @stu = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:name,:course1,:course2,:course3)
    end




end
