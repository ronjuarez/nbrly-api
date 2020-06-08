class AddUserToAssistanceRequests < ActiveRecord::Migration[5.2]
  def change
    add_reference :assistance_requests, :user, foreign_key: true
    add_reference :assistance_requests, :volunteer, references: :users
    add_foreign_key :assistance_requests, :users, column: :volunteer_id
  end
end
