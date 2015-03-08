class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :course_number
      t.string :course_description
      t.integer :professor_id
      t.integer :category_id

      t.timestamps
    end
  end
end
