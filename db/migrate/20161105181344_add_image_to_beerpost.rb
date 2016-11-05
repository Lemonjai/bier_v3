class AddImageToBeerpost < ActiveRecord::Migration[5.0]
  def change
    add_column :beerposts, :image, :string
  end
end
