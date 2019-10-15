class CreateRoads < ActiveRecord::Migration[6.0]
  def change
    create_table :roads do |t|
      t.string :start
      t.string :end
      t.integer :distance
      t.string :description

      t.timestamps
    end
  end
end
