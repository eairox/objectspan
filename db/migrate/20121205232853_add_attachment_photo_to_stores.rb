class AddAttachmentPhotoToStores < ActiveRecord::Migration
  def self.up
    change_table :stores do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :stores, :photo
  end
end
