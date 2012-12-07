class PurchaseItem < ActiveRecord::Base
	belongs_to :item
	belongs_to :purchase
	belongs_to :purchase_status
	belongs_to :purchase_item_status
	#belongs_to :return_store_id, :class_name => "store", :foreign_key => "return_store_id"
	belongs_to :store

	has_one :purchase_item_feedback, :dependent => :destroy
	
	
  	attr_accessible :item_id, :mail_in_rebate, :mail_in_rebate_date, :mail_in_rebate_status_id, :price, 
  	:purchase_id, :purchase_item_status_id, :purchase_status_id, :quantity, :return_date, :return_store_id, 
  	:return_tracking, :serial_number, :shipping, :store_id, :tax, :total


end
