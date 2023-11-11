# app/controllers/grades_controller.rb

class GradesController < ApplicationController
  def new
    @semester = Semester.find(params[:semester_id])
    @grades = @semester.courses.map { |course| Grade.new(course: course) }
  end

  def create
    @semester = Semester.find(params[:semester_id])
    @grades = Grade.create(grades_params)
    redirect_to semester_results_path(@semester)
  end

  private

  def grades_params
    params.require(:grades).map { |grade| grade.permit(:course_id, :value) }
  end
end
