class AddReimbursementTypeToAssistanceRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :assistance_requests, :reimbursement_type, :string
  end
end
