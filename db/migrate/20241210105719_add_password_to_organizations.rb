class AddPasswordToOrganizations < ActiveRecord::Migration[7.2]
  def change
    add_column :organizations, :password, :string
  end
end
