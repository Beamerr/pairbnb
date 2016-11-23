class ChangeListings < ActiveRecord::Migration
	def change
		change_table :listings do |t|
      t.references :users
      
    end
  end
end