class RemovePointsFromAssistanceRequests < ActiveRecord::Migration[5.2]
  def change
    remove_column :assistance_requests, :points, :integer
  end
end
