class ChangeReservations < ActiveRecord::Migration
  def change
    rename_column :reservations, :house_id, :lisitng_id
    add_column :reservations, :total_cost, :integer
  end
end