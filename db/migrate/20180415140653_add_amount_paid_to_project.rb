class AddAmountPaidToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :amount_paid, :float,default: 0
  end
end
