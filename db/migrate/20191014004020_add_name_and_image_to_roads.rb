class AddNameAndImageToRoads < ActiveRecord::Migration[6.0]
  def change
    add_column :roads, :name, :string
    add_column :roads, :image, :string
  end
end
