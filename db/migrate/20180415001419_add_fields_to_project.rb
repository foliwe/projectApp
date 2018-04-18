class AddFieldsToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :amount, :float, default: 0
  end
end
