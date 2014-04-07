class Destination < ActiveRecord::Base
  belongs_to :address
  has_and_belongs_to_many :post
end
