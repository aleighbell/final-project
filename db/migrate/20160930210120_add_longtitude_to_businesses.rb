class AddLongtitudeToBusinesses < ActiveRecord::Migration[5.0]
  def change
    add_column :businesses, :longtitude, :float
  end
end
