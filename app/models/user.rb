# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#

class User < ActiveRecord::Base

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  has_many :purchases, :dependent => :destroy
  has_many :user_item_relationships, :dependent => :destroy
  has_many :items, :through => :user_item_relationships 
  has_many :owned_items, :through => :user_item_relationships, :source => :item, :conditions =>  {:user_item_relationships => {:relationship_type_id => 1}} 
  has_many :needed_items, :through => :user_item_relationships, :source => :item, :conditions =>  {:user_item_relationships => {:relationship_type_id => 2}} 
   

  has_attached_file :photo, :styles => { :small => "150x150>", :medium => "300x300>", :thumb => "70x70>" },
                :url  => "/assets/users/:id/photo/:style/:basename.:extension",
                          :path => ":rails_root/public/assets/users/:id/photo/:style/:basename.:extension"

    

  has_secure_password

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']


  attr_accessible :name, :email, :password, :password_confirmation, :photo

  def photo_url
        photo.url(:medium)
  end

  def user_purchases
    purchases.collect{|p|p.purchase_items}.flatten
  end 

  private
	def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
  end



end
