class CreateCompanyItems < ActiveRecord::Migration
  def change
    create_table :company_items do |t|
      t.integer :company_id
      t.integer :item_id
      t.string :sku
      t.float :price
      t.string :url
      t.integer :return_category_id

      t.timestamps
    end
  end
end
