class RenameContactusesToContactus < ActiveRecord::Migration[5.0]
  def change
    rename_table :contactuses, :contactus
  end
end
