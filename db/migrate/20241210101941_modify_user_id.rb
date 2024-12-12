class ModifyUserId < ActiveRecord::Migration[7.2]
  def change
    remove_reference :organizations, :user, foreign_key: true
    add_reference :organizations, :creator, foreign_key: { to_table: "users" }
  end
end
