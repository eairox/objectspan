class CreateReturnCategories < ActiveRecord::Migration
  def change
    create_table :return_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
