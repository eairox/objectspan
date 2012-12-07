class AddAttachmentPhotoToPaymentMethods < ActiveRecord::Migration
  def self.up
    change_table :payment_methods do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :payment_methods, :photo
  end
end
