class AddItemsToAssistanceRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :assistance_requests, :items, :text, array: true, default: []
  end
end
