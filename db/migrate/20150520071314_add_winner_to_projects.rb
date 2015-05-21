class AddWinnerToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :winner, :string
  end
end
