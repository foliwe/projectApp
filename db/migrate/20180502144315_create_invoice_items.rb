class CreateInvoiceItems < ActiveRecord::Migration[5.1]
  def change
    create_table :invoice_items do |t|
      t.text :name
      t.integer :quantity
      t.float :rate
      t.float :amount
      t.references :invoice, foreign_key: true

      t.timestamps
    end
  end
end
