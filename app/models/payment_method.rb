class PaymentMethod < ActiveRecord::Base

	has_attached_file :photo, :styles => { :small => "150x150>", :medium => "300x300>", :thumb => "40x40>" },
                :url  => "/assets/PaymentMethod/:id/photo/:style/:basename.:extension",
                          :path => ":rails_root/public/assets/PaymentMethod/:id/photo/:style/:basename.:extension"

	    
	validates_attachment_size :photo, :less_than => 5.megabytes
	validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

	attr_accessible :photo, :duration_frequency_id, :lost, :name, :per_item_limit, :protection_duration, :protection_limit, :purchase_protection, :return_protection, :stolen, :warranty_duration, :warranty_protection, :water_damaged, :wordwide

	validates :name, :presence => true, uniqueness: { case_sensitive: false }
end
