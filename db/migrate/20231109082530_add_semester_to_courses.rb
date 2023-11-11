class AddSemesterToCourses < ActiveRecord::Migration[7.1]
  def change
    add_reference :courses, :semester, foreign_key: true, default: 1 # Use the ID of a default semester
  end
end
