class UsersEvents < ActiveRecord::Migration
  def change
    create_table :users_events, id: false do |t|
      t.integer :user_id, null: false
      t.integer :event_id, null: false
    end
    add_index(:users_events, [:user_id, :event_id], unique: true)
  end
end
