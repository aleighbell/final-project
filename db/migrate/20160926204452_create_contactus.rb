class CreateContactus < ActiveRecord::Migration[5.0]
  def change
    create_table :contactus do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :businessname
      t.string :businessaddress
      t.boolean :businessowner
      t.string :message

      t.timestamps
    end
  end
end
