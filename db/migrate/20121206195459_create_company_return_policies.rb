class CreateCompanyReturnPolicies < ActiveRecord::Migration
  def change
    create_table :company_return_policies do |t|
      t.integer :company_id
      t.text :return_policy
      t.string :return_policy_url
      t.text :return_policy_faq

      t.timestamps
    end
  end
end
