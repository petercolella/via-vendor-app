class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :last_name, :string, null: false, default: ""
    add_column :users, :phone, :string, null: false, default: ""
    add_column :users, :role, :string
  end
end
