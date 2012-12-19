class PurchaseItem < ActiveRecord::Base
	after_create :create_purchase_product

	belongs_to :item
	belongs_to :purchase
	belongs_to :purchase_status
	belongs_to :purchase_item_status
	#belongs_to :return_store_id, :class_name => "store", :foreign_key => "return_store_id"
	belongs_to :store
	belongs_to :visibility

	has_one :purchase_item_feedback, :dependent => :destroy
	
	
  	attr_accessible :item_id,  :price, 
  	:purchase_id, :purchase_item_status_id, :purchase_status_id, :quantity,  
  	 :serial_number, :shipping, :store_id, :tax, :total, :tax_deductable, :hsa_eligible, :visibility_id, :allowed_return_date,
  	 :protection_date, :tag_list, :discount



  

  	def create_purchase_product
  		if visibility_id == 1 
  			purchase.user.user_item_relationships.create!(:item_id => item_id, :relationship_type_id => 1, :relationship_date => Time.now) 
  		end
  		
  	end

  	def item_name
		item.try(:name)
  	end

	def item_name=(name)
  		self.item = Item.find_or_create_by_name(name) if name.present?
  	end

end
