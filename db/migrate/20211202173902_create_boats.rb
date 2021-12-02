class CreateBoats < ActiveRecord::Migration[6.1]
  def change
    create_table :boats do |t|
      t.text :name

      t.timestamps
    end
    add_index :boats, :boat_id
    add_index :boats, :name
  end
end
