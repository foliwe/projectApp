class RemoveEndDateFromProject < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :end_date
  end
end
