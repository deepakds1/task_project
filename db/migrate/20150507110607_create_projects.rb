class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string   :task_name,null: true
      t.boolean  :specific_task,
  


      t.timestamps null: false
    end
  end
end
