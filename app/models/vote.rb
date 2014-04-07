class Vote < ActiveRecord::Base
  belongs_to :vote_type
  belongs_to :user
  belongs_to :post, :foreign_key => 'parent_post_id'
end
