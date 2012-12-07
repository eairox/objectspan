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

  has_many :purchases
  has_many :purchase_items 

  has_attached_file :photo, :styles => { :small => "150x150>", :medium => "300x300>", :thumb => "70x70>" },
                :url  => "/assets/users/:id/photo/:style/:basename.:extension",
                          :path => ":rails_root/public/assets/users/:id/photo/:style/:basename.:extension"

    
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']


  attr_accessible :name, :email, :password, :password_confirmation, :photo
  has_secure_password

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  def photo_url
        photo.url(:medium)
  end

  private
	def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end

end
