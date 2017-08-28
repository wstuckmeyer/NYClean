class Projects < ActiveRecord::Migration[5.1]
  def change
  	create_table :project do |t|
  		t.integer :user_id
  		t.text :name
  		t.text :description
  		t.text :photos
  		t.integer :volunteers
  		t.text :location
  		t.date :date
  	end
  end
end
