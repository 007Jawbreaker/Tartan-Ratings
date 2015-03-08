class CreateCafeteriaCategories < ActiveRecord::Migration
  def change
    create_table :cafeteria_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
