class AddOrganizationIdToTasks < ActiveRecord::Migration[7.2]
  def change
    remove_reference :tasks, :user, foreign_key: true
    add_reference :tasks, :organization, foreign_key: true
  end
end
