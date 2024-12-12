class CreateMembers < ActiveRecord::Migration[7.2]
  def change
    create_table :members do |t|
      t.references :user, foreign_key: true
      t.references :organization, foreign_key: true
      t.timestamps
    end
  end
end
