class ResultsController < ApplicationController
    def semester_results
      # Retrieve courses for a specific semester (adjust as needed)
      @courses = Course.where(semester: params[:semester])
      @gpa = Course.calculate_semester_gpa(@courses)
    end
  
    def overall_results
      # Retrieve all courses for the student (adjust as needed)
      @all_courses = Course.where(student_id: current_user.id)
      @cgpa = Course.calculate_cgpa(current_user.id)
    end
  end
  