class CreateAttends < ActiveRecord::Migration
  def change
    create_table :attends do |t|
      t.belongs_to :user, index: true
      t.belongs_to :event, index: true

      t.timestamps
    end
    add_index :attends, [:user_id, :event_id], unique: true
  end
end
