class CoursesController < ApplicationController
    def new
      @course = Course.new
    end
  
    def create
        @course = Course.new(course_params)
      
        if @course.save
          redirect_to root_path, notice: 'Course added successfully.'
        else
          render :new
        end
      end
  
    private
  
    def course_params
      params.require(:course).permit(:name, :code, :score, :grade, :credit_unit)
    end
  end
  