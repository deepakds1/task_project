class AddSpecificTaskToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :specific_task, :boolean
  end
end
