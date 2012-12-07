class CreateCompanyCategorizations < ActiveRecord::Migration
  def change
    create_table :company_categorizations do |t|
      t.integer :company_id
      t.integer :category_id

      t.timestamps
    end
  end
end
