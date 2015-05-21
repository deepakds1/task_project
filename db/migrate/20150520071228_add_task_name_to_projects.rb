class AddTaskNameToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :task_name, :string
  end
end
