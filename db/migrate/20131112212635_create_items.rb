class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :description
      t.boolean :check
      t.integer :checklist_id

      t.timestamps
    end
  end
end
