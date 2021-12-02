class AddDateToStory < ActiveRecord::Migration[6.1]
  def change
    add_column :stories, :date, :datetime
  end
end
