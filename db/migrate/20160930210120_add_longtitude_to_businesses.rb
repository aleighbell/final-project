class AddLongtitudeToBusinesses < ActiveRecord::Migration[5.0]
  def change
    add_column :businesses, :longitude, :float
  end
end
