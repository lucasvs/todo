class CreateChecklists < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.string :description
      t.boolean :completed
      t.integer :task_id

      t.timestamps
    end
  end
end
