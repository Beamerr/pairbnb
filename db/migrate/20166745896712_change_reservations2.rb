class ChangeReservations2 < ActiveRecord::Migration
  def change
    rename_column :reservations, :lisitng_id, :listing_id
  end
end