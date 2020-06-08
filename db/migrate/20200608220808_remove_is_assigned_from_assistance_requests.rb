class RemoveIsAssignedFromAssistanceRequests < ActiveRecord::Migration[5.2]
  def change
    remove_column :assistance_requests, :is_assigned, :boolean
  end
end
