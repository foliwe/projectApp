class AddTypeOfServiceToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :type_of_service, :string
  end
end
