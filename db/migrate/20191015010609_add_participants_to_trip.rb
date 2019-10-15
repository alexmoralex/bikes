class AddParticipantsToTrip < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :participants, :string, default: [], array: true
  end
end
