class AddDetailsToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :user_name,    :string
    add_column :users, :first_name,   :string
    add_column :users, :last_name,    :string
    add_column :users, :phone_number, :string

    # Add a unique index on the user_name column
    add_index :users, :user_name, unique: true
  end
end
