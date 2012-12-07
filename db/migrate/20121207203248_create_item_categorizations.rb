class CreateItemCategorizations < ActiveRecord::Migration
  def change
    create_table :item_categorizations do |t|
      t.integer :item_id
      t.integer :category_id

      t.timestamps
    end
  end
end
