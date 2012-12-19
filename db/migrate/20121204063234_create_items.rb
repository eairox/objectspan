class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :short_description
      t.string :upc
      t.text :full_description
      t.text :features
      t.integer :make_id
      t.string :model_name
      t.decimal :list_price, precision: 8, scale: 2
      t.date :release_date

      t.timestamps
    end
  end
end
