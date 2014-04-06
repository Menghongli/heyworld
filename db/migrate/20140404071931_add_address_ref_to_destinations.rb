class AddAddressRefToDestinations < ActiveRecord::Migration
  def change
    add_reference :destinations, :address, index: true
  end
end
