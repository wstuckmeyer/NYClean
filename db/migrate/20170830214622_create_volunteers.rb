class CreateVolunteers < ActiveRecord::Migration[5.1]
  def change
    create_table :volunteers do |t|
      t.integer :project_id
      t.integer :volunteer_id
      t.timestamps
    end
  end
end
