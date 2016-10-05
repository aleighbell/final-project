class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :crypted_password
      t.string :salt
      t.string :name
      t.string :password_hash
      t.string :password
      t.timestamps
    end
  end
end
