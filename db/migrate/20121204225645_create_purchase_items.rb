class CreatePurchaseItems < ActiveRecord::Migration
  def change
    create_table :purchase_items do |t|
      t.integer :item_id
      t.integer :purchase_id
      t.string :serial_number
      t.float :quantity
      t.decimal :price, precision: 8, scale: 2
      t.decimal :tax, precision: 8, scale: 2
      t.decimal :shipping, precision: 8, scale: 2
      t.decimal :other_cost, precision: 8, scale: 2
      t.decimal :discount, precision: 8, scale: 2
      t.decimal :total, precision: 8, scale: 2
      t.date :allowed_return_date
      t.date :protection_date
      t.integer :purchase_item_status_id
      t.date :purchase_item_status_date
      t.references :user
      t.boolean :tax_deductable
      t.boolean :hsa_eligible
      t.text :notes
      t.integer :item_feedback_rating_id
      t.text :item_feedback
      t.datetime :feedback_date
      t.integer :visibility_id
      t.references :store

      t.timestamps
    end
  end
end
