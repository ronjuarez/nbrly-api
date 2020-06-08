class AddCompleteByToAssistanceRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :assistance_requests, :complete_by, :date
  end
end
