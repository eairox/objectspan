class CreatePurchaseItems < ActiveRecord::Migration
  def change
    create_table :purchase_items do |t|
      t.integer :item_id
      t.integer :purchase_id
      t.string :serial_number
      t.float :quantity
      t.float :price
      t.integer :purchase_status_id
      t.float :tax
      t.float :shipping
      t.float :other_cost
      t.float :discount
      t.float :total
      t.float :mail_in_rebate
      t.date :mail_in_rebate_date
      t.integer :mail_in_rebate_status_id
      t.date :return_date
      t.integer :return_store_id
      t.string :return_tracking
      t.integer :purchase_item_status_id
      t.integer :user_id
      t.boolean :tax_deductable
      t.boolean :hsa_eligible
      t.text :notes
      t.integer :item_feedback_rating_id
      t.text :item_feedback
      t.datetime :feedback_date

      t.timestamps
    end
  end
end
