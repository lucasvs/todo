class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :description
      t.integer :checklist_id
      t.boolean :check

      t.timestamps
    end
    add_index :items, :checklist_id 
  end
end
