class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :courses       
  has_many :lects
  has_many :comments
  mount_uploader :image,ImageUploader
end
