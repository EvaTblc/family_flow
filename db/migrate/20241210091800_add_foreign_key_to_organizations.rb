class AddForeignKeyToOrganizations < ActiveRecord::Migration[7.2]
  def change
    add_reference :organizations, :user, foreign_key: true
    remove_reference :users, :organization, foreign_key: true
  end
end
