class AddPeopleToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :people, :integer
  end
end
