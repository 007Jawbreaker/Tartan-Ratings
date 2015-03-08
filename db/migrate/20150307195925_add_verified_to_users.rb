class AddVerifiedToUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :is_verfied
  	add_column :users , :is_verified , :boolean 
  end
end
