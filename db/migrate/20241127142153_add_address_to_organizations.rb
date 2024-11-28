class AddAddressToOrganizations < ActiveRecord::Migration[7.1]
  def change
    add_column :organizations, :address, :string
    add_column :organizations, :latitude, :float
    add_column :organizations, :longitude, :float
  end
end
