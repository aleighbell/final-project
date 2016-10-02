class AddLatitudeToBusinesses < ActiveRecord::Migration[5.0]
  def change
    add_column :businesses, :latitude, :float
  end
end
