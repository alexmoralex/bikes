class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.references :user, null: false, foreign_key: true
      t.references :road, null: false, foreign_key: true
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
