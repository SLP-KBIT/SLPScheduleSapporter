class AddNameAndAccountToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :account, :string
  end
end
