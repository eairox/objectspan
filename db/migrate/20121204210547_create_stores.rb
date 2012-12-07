class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.integer :company_id
      t.string :address1
      t.string :address2
      t.string :city
      t.integer :state_id
      t.integer :country_id
      t.string :other_state
      t.string :zipcode
      t.string :phone
      t.string :longitude
      t.string :latitude
      t.string :store_url
      t.text :description
      t.float :rating
      t.string :fax
      t.string :email
      t.integer :store_type_id
      t.string :store_number
      t.boolean :user_favorite


      t.timestamps
    end
  end
end
