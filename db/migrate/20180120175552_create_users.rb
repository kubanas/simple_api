class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :rfid_token
      t.string :besitzer
      t.integer :counter
      
      

      t.timestamps
    end
  end
end
