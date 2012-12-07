class CreateCompanyContacts < ActiveRecord::Migration
  def change
    create_table :company_contacts do |t|
      t.integer :company_id
      t.string :contact_type
      t.string :contact_value

      t.timestamps
    end
  end
end
