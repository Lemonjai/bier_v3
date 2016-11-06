class AddImageToBeercolour < ActiveRecord::Migration[5.0]
  def change
    add_column :beercolours, :image, :string
  end
end
