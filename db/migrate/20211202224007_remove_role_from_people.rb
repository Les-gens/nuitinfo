class RemoveRoleFromPeople < ActiveRecord::Migration[6.1]
  def change
    remove_column :people, :role
  end
end
