class CreateStoryPeople < ActiveRecord::Migration[6.1]
  def change
    create_table :story_people do |t|
      t.text :role

      t.timestamps
    end
    add_reference :story_people, :person
    add_reference :story_people, :story
  end
end
