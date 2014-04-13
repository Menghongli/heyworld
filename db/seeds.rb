# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# ruby encoding: utf-8

destination_list =[
  [ "Melbourne", "144.962979", "-37.813186", "melbourne_thumb.jpg", "", "", "Melbourne", "VIC", "3000", "Australia"] 
]

destination_list.each do |name, longitude, latitude, thumbnail, building, street, city, state, postcode, country|
  a = Address.create!(building:building, street:street, city:city, state:state, postcode:postcode, country:country)
  a.create_destination!(name:name, longitude:longitude, latitude:latitude, thumbnail:thumbnail)
end
