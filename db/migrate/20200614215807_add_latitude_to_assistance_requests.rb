class AddLatitudeToAssistanceRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :assistance_requests, :latitude, :float
    add_column :assistance_requests, :longitude, :float
  end
end
