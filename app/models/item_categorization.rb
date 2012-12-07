class ItemCategorization < ActiveRecord::Base

	belongs_to :category
	belongs_to :item

  attr_accessible :category_id, :item_id
end
