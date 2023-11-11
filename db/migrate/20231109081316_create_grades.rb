class CreateGrades < ActiveRecord::Migration[7.1]
  def change
    create_table :grades do |t|

      t.timestamps
    end
  end
end
