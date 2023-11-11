class SemestersController < ApplicationController
  def new
    @semester = Semester.new
  end

  def create
    @semester = Semester.new(semester_params)

    if @semester.save
      redirect_to new_semester_grade_path(@semester), notice: 'Semester was successfully created.'
    else
      render :new
    end
  end

  private

  def semester_params
    params.require(:semester).permit(:name, courses_attributes: [:name, :code, :credit_unit])
  end
end
