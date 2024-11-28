class RemovePasswordFromOrganization < ActiveRecord::Migration[7.1]
  def change
    remove_column :organizations, :password, :string
  end
end
