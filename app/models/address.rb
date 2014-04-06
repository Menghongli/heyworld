class Address < ActiveRecord::Base
  has_one :destination
end
