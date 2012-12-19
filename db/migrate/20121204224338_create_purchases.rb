class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :name
      t.integer :store_id
      t.datetime :purchase_date
      t.integer :payment_method_id
      t.integer :user_id
      t.string :order_number
      t.integer :merchant_type_id
      t.integer :purchase_feedback_id
      t.integer :store_feedback_id
      t.decimal :subtotal, precision: 8, scale: 2
      t.decimal :discount, precision: 8, scale: 2
      t.decimal :tax, precision: 8, scale: 2
      t.decimal :shipping, precision: 8, scale: 2
      t.decimal :other_charges, precision: 8, scale: 2
      t.decimal :total, precision: 8, scale: 2


      t.timestamps
    end
  end
end
