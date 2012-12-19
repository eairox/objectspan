class Item < ActiveRecord::Base
	belongs_to :make
	
	has_many :purchase_items
	has_many :company_items

	has_many :item_categorizations
	has_many :categories, :through => :item_categorizations

	has_many :users, :through => :user_item_relationships, :dependent => :destroy
	has_many :user_item_relationships

	
	has_attached_file :photo, :styles => { :small => "150>x140", :medium => "300x300>", :thumb => "50x50>" },
							  :url  => "/assets/items/:id/photo/:style/:basename.:extension",
                  			  :path => ":rails_root/public/assets/items/:id/photo/:style/:basename.:extension"

  	
	validates_attachment_size :photo, :less_than => 5.megabytes
	validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

  attr_accessible :photo, :features, :full_description, :list_price, :make_id, :model_name, 
  :name, :release_date, :short_description, :upc

  validates :name, :presence => true, uniqueness: { case_sensitive: false }


end
