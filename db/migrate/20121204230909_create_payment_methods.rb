class CreatePaymentMethods < ActiveRecord::Migration
  def change
    create_table :payment_methods do |t|
      t.string :name
      t.float :protection_duration
      t.integer :duration_frequency_id
      t.float :protection_limit
      t.boolean :purchase_protection
      t.boolean :stolen
      t.boolean :lost
      t.boolean :water_damaged
      t.boolean :return_protection
      t.boolean :warranty_protection
      t.float :warranty_duration
      t.float :per_item_limit
      t.boolean :wordwide

      t.timestamps
    end
  end
end
