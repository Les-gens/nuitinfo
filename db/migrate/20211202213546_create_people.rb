class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.text :name
      t.datetime :birthdate
      t.text :role


      t.timestamps
    end
    add_index :people, :people_id
  end
end
