class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
    	t.integer :user_id
  		t.text :name
  		t.text :description
  		t.text :photos
  		t.integer :volunteers
  		t.text :location
  		t.date :date
      t.timestamps
    end
  end
end
