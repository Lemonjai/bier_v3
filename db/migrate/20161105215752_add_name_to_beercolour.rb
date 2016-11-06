class AddNameToBeercolour < ActiveRecord::Migration[5.0]
  def change
    add_column :beercolours, :name, :string
  end
end
