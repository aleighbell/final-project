class AddAttachmentPhotoToParks < ActiveRecord::Migration
  def self.up
    change_table :parks do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :parks, :photo
  end
end
