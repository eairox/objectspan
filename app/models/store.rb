class Store < ActiveRecord::Base
	belongs_to :country
	belongs_to :state
	belongs_to :company
	belongs_to :store_type

	has_many :store_items
	has_many :items, :through => :store_items
	has_many :purchases

	has_attached_file :photo, :styles => { :small => "150x150>", :medium => "300x300>", :thumb => "100x100>" },
							  :url  => "/assets/stores/:id/photos/:style/:basename.:extension",
                  			  :path => ":rails_root/public/assets/stores/:id/photos/:style/:basename.:extension"

  	attr_accessible :photo, :address1, :address2, :city, :company_id, :country_id, :description, :email, 
  	:fax, :latitude, :longitude, :name, :other_state, :phone, :rating, :state_id, :store_number, :store_type_id, 
  	:store_url, :zipcode, :type, :company_name
  	
	validates_attachment_size :photo, :less_than => 5.megabytes
	validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

	def type
		store_type.try(:name)
	end
	
	def type=(name)
		self.store_type = StoreType.find_by_name(name)
	end

	def company_name
		self.company.try(:name)
	end

	def company_name=(name)
		self.company = Company.find_or_create_by_name(name) if name.present?
	end


	def self.all_stores_by_type(name)
		type = StoreType.find_by_name(name)
		Store.find_all_by_store_type_id(type.id)
	end

	def self.all_stores_by_company(name)
		company = Company.find_by_name(name)
		Store.find_all_by_company_id(company.id)
	end

end
