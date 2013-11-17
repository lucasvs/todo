class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.datetime :date
      t.integer :move
      t.integer :color_id
      t.integer :list_id

      t.timestamps
    end
    add_index :tasks, :color_id 
    add_index :tasks, :list_id               
  end
end
