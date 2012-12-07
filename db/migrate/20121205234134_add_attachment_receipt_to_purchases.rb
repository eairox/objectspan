class AddAttachmentReceiptToPurchases < ActiveRecord::Migration
  def self.up
    change_table :purchases do |t|
      t.has_attached_file :receipt
    end
  end

  def self.down
    drop_attached_file :purchases, :receipt
  end
end
