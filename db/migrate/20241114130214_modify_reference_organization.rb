class ModifyReferenceOrganization < ActiveRecord::Migration[7.1]
  def change
    remove_reference :organizations, :creator, foreign_key: { to_table: "users" }
  end
end
