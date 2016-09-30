class RemoveCatIdBusinessIdFromCities < ActiveRecord::Migration[5.0]
  def change
    remove_column :cities, :business_id, :integer
    remove_column :cities, :category_id, :integer
  end
end
