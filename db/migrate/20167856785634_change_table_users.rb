class ChangeTableUsers < ActiveRecord::Migration 
   def change
       change_table :users do |t|
     t.string :root_url
   end
  end
end