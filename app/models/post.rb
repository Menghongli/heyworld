class Post < ActiveRecord::Base
  acts_as_superclass
  belongs_to :user
  has_and_belongs_to_many :category
  has_and_belongs_to_many :destination
  has_and_belongs_to_many :tag
  has_many :vote
end
