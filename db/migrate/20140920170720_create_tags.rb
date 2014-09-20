class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :event_id, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
