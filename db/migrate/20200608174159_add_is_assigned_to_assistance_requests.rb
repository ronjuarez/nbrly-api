class AddIsAssignedToAssistanceRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :assistance_requests, :is_assigned, :boolean, default: false
  end
end
