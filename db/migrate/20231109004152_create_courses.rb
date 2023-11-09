class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :code
      t.integer :score
      t.string :grade
      t.float :grade_point
      t.integer :credit_unit

      t.timestamps
    end
  end
end
