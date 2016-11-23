class ChangeReservations < ActiveRecord::Migration
  def change
	change_table :reservations do |t|
      t.references :users, :listings

    end
  end
end