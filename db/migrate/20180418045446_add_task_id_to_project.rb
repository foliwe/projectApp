class AddTaskIdToProject < ActiveRecord::Migration[5.1]
  def change
    add_reference :projects, :task, foreign_key: true
  end
end
