class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.integer :user_id, null: false
      t.string :location
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
