class CorrectForeignKeys < ActiveRecord::Migration[5.0]


  def change
    remove_column :favourites, :city_id, :integer
    remove_column :favourites, :category_id, :integer
    remove_column :favourites, :business_name_id, :integer
    add_column :favourites, :business_id, :integer
  end



end
