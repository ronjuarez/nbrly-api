class AddRequesterConfirmedCompletionToAssistanceRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :assistance_requests, :requester_confirmed_completion, :boolean, default: false
  end
end
