class AddPrivToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :priv, :boolean
  end
end
