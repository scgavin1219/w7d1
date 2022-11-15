class AddIndextoSession < ActiveRecord::Migration[7.0]
  def change
    remove_index :users, :session_token, name: "index_users_on_session_token"
    add_index :users, [:username, :session_token], unique: true
  end
end
