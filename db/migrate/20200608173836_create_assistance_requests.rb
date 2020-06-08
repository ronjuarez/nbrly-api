class CreateAssistanceRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :assistance_requests do |t|
      t.string :delivery_address
      t.integer :points
      t.string :request_type

      t.timestamps
    end
  end
end
