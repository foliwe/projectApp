class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.text :logo
      t.text :name
      t.text :invoice_id
      t.text :from
      t.text :to_heading
      t.text :to_description
      t.date :date
      t.text :payment_terms
      t.date :due_date
      t.float :balance_due
      t.float :subtotal
      t.float :discount
      t.float :tax
      t.float :total
      t.float :amount_paid
      t.text :notes_heading
      t.text :notes_text
      t.text :terms_text
      t.text :terms_heading
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
