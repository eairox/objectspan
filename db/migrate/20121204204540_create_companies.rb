class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :url
      t.string :email
      t.string :phone
      t.string :fax
      t.string :address1
      t.string :address2
      t.string :city
      t.integer :state_id
      t.string :other_state
      t.string :zipcode
      t.integer :country_id
      t.text :description
      t.boolean :user_favorite

      t.timestamps
    end
  end
end
