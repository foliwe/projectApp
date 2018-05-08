class Invoice < ApplicationRecord

	Paperclip.options[:content_type_mappings] = {
  	:pem => "text/plain"
	}

  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

	scope  :specific_invoice, ->(invoice_id) {where(id: invoice_id)}

  belongs_to :project
  has_many :invoice_items


  accepts_nested_attributes_for :invoice_items, allow_destroy: true
	validates :date ,presence: true


  accepts_nested_attributes_for :invoice_items, allow_destroy: true
end
