class Course < ApplicationRecord
    GRADE_POINTS = {
      'A' => 5.00,
      'B' => 4.00,
      'C' => 3.00,
      'D' => 2.00,
      'E' => 1.00,
      'F' => 0.00
    }
  
    def calculate_quality_points
      GRADE_POINTS[grade] * credit_unit
    end
  
    def self.calculate_semester_gpa(courses)
      total_quality_points = courses.sum(&:calculate_quality_points)
      total_credit_units = courses.sum(&:credit_unit)
  
      return 0.0 if total_credit_units.zero?
  
      (total_quality_points / total_credit_units).round(2)
    end
  end
  