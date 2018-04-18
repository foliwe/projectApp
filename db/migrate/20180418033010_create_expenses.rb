class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.string :item_name
      t.float :cost, default: 0.0
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
