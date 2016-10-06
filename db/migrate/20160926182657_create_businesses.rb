class CreateBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :businesses do |t|
      t.integer :category_id
      t.string :business_name
      t.text :business_address
      t.integer :city_id
      t.float :latitude
      t.float :longitude  
      t.timestamps
    end
  end
end
