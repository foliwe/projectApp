class Invoice < ApplicationRecord

	scope  :specific_invoice, ->(invoice_id) {where(id: invoice_id)}

  belongs_to :project
  has_many :invoice_items
  
end
