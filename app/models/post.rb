class Post < ActiveRecord::Base
  belongs_to :article, :polymorphic => true
  belongs_to :user
  belogns_to :post_type
end
