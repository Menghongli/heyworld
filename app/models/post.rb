class Post < ActiveRecord::Base
  belongs_to :article, :polymorphic => true
end
