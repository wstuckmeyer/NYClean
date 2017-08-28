class Messages < ActiveRecord::Migration[5.1]
  def change
  	create_table :message do |t|
  		t.integer :user_id
  		t.integer :board_id
  		t.text :content
  	end
  end
end
