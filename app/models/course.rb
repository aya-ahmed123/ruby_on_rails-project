class Course < ActiveRecord::Base
  validates :title, :presence => true
  has_many :lects ,:dependent=>:delete_all
  belongs_to :user
  mount_uploader :image,ImageUploader
end
