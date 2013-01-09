class Company < ActiveRecord::Base
	belongs_to :country
	belongs_to :state

	has_many :stores, :dependent => :destroy

	has_many :company_items, :dependent => :destroy
	has_many :items, :through => :company_items

	has_many :company_category_return_policies, :dependent => :destroy
	has_one :company_return_policy, :dependent => :destroy

	has_many :company_categorizations, :dependent => :destroy
	has_many :categories, :through => :company_categorizations
	

	has_attached_file :logo, :styles => { :small => "150x150>", :medium => "300x300>", :thumb => "80x80>" },
							  :url  => "/assets/company/:id/logo/:style/:basename.:extension",
                  			  :path => ":rails_root/public/assets/company/:id/logo/:style/:basename.:extension"

  	
	validates_attachment_size :logo, :less_than => 5.megabytes
	validates_attachment_content_type :logo, :content_type => ['image/jpeg', 'image/png']


	accepts_nested_attributes_for :stores, :company_categorizations, :company_category_return_policies, :allow_destroy => true

  	attr_accessible :logo, :address1, :address2, :city, :country_id, :description, :email, :fax, 
  	:name, :other_state, :phone, :state_id, :url, :zipcode

  	validates :name, :presence => true, uniqueness: { case_sensitive: false }

	default_scope order: :name

end
