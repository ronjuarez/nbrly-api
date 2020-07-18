class AddFbUserToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fb_user, :boolean, default: false
  end
end
