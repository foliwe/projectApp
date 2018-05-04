class InvoicesController < ApplicationController

	def index
		@invoices = Invoice.all
	end

	def show
		@invoice_id = params[:id]
		@invoice = Invoice.specific_invoice
	end

	def new
		@invoice = Invoice.new
	end

	def create
		@invoice = Invoice.create(invoice_params)
		@invoice.save
	end

	def update

	end

	private

	def invoice_params
		params.require(:invoice).permit(:image,:name,:invoice_id,:from,:to_heading,:to_description,:date,:payment_terms,:due_date,:balance_due,:subtotal,:discount,:tax,:total,:amount_paid,:notes_heading,:notes_text,:terms_heading,:terms_text,invoice_items: [:name,:quantity,:rate,:amount,:_destroy])
	end

end
