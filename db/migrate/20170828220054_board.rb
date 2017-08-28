class Board < ActiveRecord::Migration[5.1]
  def change
  	create_table :board do |t|
  		t.integer :project_id
  	end
  end
end
