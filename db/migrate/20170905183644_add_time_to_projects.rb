class AddTimeToProjects < ActiveRecord::Migration[5.1]
  def change
  	add_column :projects, :time, :time
  end
end
