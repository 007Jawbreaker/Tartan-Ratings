class CreateCafeteria < ActiveRecord::Migration
  def change
    create_table :cafeteria do |t|
      t.string :item_name
      t.string :item_description
      t.integer :item_price
      t.integer :cafeteria_category_id

      t.timestamps
    end
  end
end
