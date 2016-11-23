class CreateListings < ActiveRecord::Migration
	def change
		create_table :listings do |t|
      t.integer :user_id
      t.string :description
      t.integer :max_occupants 
      t.integer :rooms
      t.integer :rent
      t.string :availability
      t.string :city
      t.string :address
      t.integer :booker_id
      t.timestamps
    end
  end
end