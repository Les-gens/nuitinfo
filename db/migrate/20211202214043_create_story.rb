class CreateStory < ActiveRecord::Migration[6.1]
  def change
    create_table :stories do |t|
      t.text :content
      t.timestamps
    end
  end
end
