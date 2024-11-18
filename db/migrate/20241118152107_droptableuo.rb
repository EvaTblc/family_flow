class Droptableuo < ActiveRecord::Migration[7.1]
  def change
    drop_table :user_orgs
  end
end
