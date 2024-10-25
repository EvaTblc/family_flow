class AddUserToOrganizations < ActiveRecord::Migration[7.1]
  def change
    add_reference :organizations, :creator, foreign_key: { to_table: "users" }
  end
end
