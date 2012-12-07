class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :code
      t.string :name
      t.integer :rank
      t.boolean :is_obsolete

      t.timestamps
    end
  end
end
