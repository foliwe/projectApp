class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
