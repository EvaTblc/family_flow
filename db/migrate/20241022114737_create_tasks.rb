class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :category
      t.string :title
      t.string :description
      t.date :start
      t.date :end
      t.boolean :priority, default: false
      t.boolean :status, default: false
      t.string :recurrence

      t.timestamps
    end
  end
end
