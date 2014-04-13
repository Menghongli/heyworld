class AddThumbnailToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :thumbnail, :string
  end
end
