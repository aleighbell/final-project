class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :city
      t.integer :business_id
      t.integer :category_id

      t.timestamps
    end
  end
end
