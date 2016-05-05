class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :lect
  validates :comment_content , :presence => true
end
