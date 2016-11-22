class CreateReservations < ActiveRecord::Migration
	def change
		create_table :reservations do |t|
      t.integer :user_id
      t.date :check_in
      t.date :check_out
      t.integer :house_id
      t.timestamps
    end
  end
end