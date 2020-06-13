class ChangeItemsArray < ActiveRecord::Migration[5.2]
  def change
    change_column :assistance_requests, :items, :string, array: true, default: []
  end
end
