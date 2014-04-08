class Comment < ActiveRecord::Base
  acts_as :post
  belongs_to :comment_location
end

