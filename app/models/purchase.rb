class Purchase < ActiveRecord::Base
	belongs_to :group
	belongs_to :payment_method
	belongs_to :user
	belongs_to :visibility
	belongs_to :store

	has_one :purchase_feedback, :dependent => :destroy

	has_many :purchase_items, :dependent => :destroy

	has_attached_file :receipt, :styles => { :small => "150x150>", :medium => "300x300>", :thumb => "100x100>" },
							  :url  => "/assets/purchases/receipts/:id/:style/:basename.:extension",
                  			  :path => ":rails_root/public/assets/purchases/receipts/:id/:style/:basename.:extension"

  	
	validates_attachment_size :receipt, :less_than => 5.megabytes
	validates_attachment_content_type :receipt, :content_type => ['image/jpeg', 'image/png', "application/pdf"]

	accepts_nested_attributes_for :purchase_items, :purchase_feedback, :allow_destroy => true

  	attr_accessible :receipt, :receipt_file_name, :group_id, :name, :payment_method_id, :purchase_date, :store_id, :user_id, :visibility_id
end
