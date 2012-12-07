class CreateCompanyCountries < ActiveRecord::Migration
  def change
    create_table :company_countries do |t|
      t.integer :company_id
      t.integer :country_id

      t.timestamps
    end
  end
end
