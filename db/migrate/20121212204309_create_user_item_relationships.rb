class CreateUserItemRelationships < ActiveRecord::Migration
  def change
    create_table :user_item_relationships do |t|
      t.integer :user_id
      t.integer :item_id
      t.integer :relationship_type_id
      t.datetime :relationship_date
      t.integer :rating
      t.text :comments
      t.integer :visibility_id
      t.text :private_comments
      

      t.timestamps
    end
  end
end
