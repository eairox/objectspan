class CreateCompanyCategoryReturnPolicies < ActiveRecord::Migration
  def change
    create_table :company_category_return_policies do |t|
      t.integer :company_id
      t.integer :return_category_id
      t.float :restocking_fee_precentage
      t.date :holiday_purchase_date_from
      t.date :holiday_purchase_date_to
      t.date :holiday_return_date
      t.integer :return_duration
      t.integer :return_duration_type_id
      t.integer :exchange_duration
      t.integer :exchange_duration_type_id
      t.boolean :rma_required
      t.boolean :open_used_returnable
      t.text :restrictions

      t.timestamps
    end
  end
end
