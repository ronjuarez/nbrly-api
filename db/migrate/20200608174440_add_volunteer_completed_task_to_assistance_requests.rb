class AddVolunteerCompletedTaskToAssistanceRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :assistance_requests, :volunteer_completed_task, :boolean, default: false
  end
end
