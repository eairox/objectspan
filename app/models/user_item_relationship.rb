class UserItemRelationship < ActiveRecord::Base
	belongs_to :user
	belongs_to :item
	belongs_to :relationship_type


  attr_accessible :item_id, :relationship_date, :relationship_type_id, :user_id
  
end
