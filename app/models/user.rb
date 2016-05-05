class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :courses ,:dependent=>:delete_all      
  has_many :lects ,:dependent=>:delete_all
  has_many :comments ,:dependent=>:delete_all
  mount_uploader :image,ImageUploader
end
