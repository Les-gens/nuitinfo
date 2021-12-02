class CreateStoryBoats < ActiveRecord::Migration[6.1]
  def change
    create_table :story_boats do |t|

      t.timestamps
    end
    add_reference :story_boats, :boat
    add_reference :story_boats, :story
  end
end
