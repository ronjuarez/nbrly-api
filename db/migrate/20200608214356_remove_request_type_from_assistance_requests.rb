class RemoveRequestTypeFromAssistanceRequests < ActiveRecord::Migration[5.2]
  def change
    remove_column :assistance_requests, :request_type, :string
  end
end
