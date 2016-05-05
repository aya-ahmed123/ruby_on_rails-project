class Lect < ActiveRecord::Base
  validates :content, :title, :presence => true
  belongs_to :user
  belongs_to :course
  has_many :comments ,:dependent=>:delete_all
  acts_as_votable
  mount_uploader :attach, FileUploader
end
