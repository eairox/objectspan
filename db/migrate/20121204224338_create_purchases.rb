class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :name
      t.integer :group_id
      t.integer :company_id
      t.integer :store_id
      t.datetime :purchase_date
      t.integer :payment_method_id
      t.integer :visibility_id
      t.integer :user_id
      t.string :order_number
      t.integer :merchant_type_id
      t.integer :purchase_feedback_id
      t.integer :store_feedback_id


      t.timestamps
    end
  end
end
