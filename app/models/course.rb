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
  end
  