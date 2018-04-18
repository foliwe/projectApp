class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :phone
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
