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
<<<<<<< HEAD
		 if @invoice.save
			 redirect_to @invoice
		 else
			 render 'new'
		 end
=======
		@invoice.save
>>>>>>> 2ccbb8628ee8fbf8966c0af8515bdc9f52cc3d46
	end

	def update

	end

	private

	def invoice_params
<<<<<<< HEAD
		params.require(:invoice).permit(:image,:name,:invoice_id,:from,:to_heading,:to_description,:date,:payment_terms,:due_date,:balance_due,:subtotal,:discount,:tax,:total,:amount_paid,:notes_heading,:notes_text,:project_id, :terms_heading,:terms_text,invoice_items: [:name,:quantity,:rate,:amount,:_destroy])
=======
		params.require(:invoice).permit(:image,:name,:invoice_id,:from,:to_heading,:to_description,:date,:payment_terms,:due_date,:balance_due,:subtotal,:discount,:tax,:total,:amount_paid,:notes_heading,:notes_text,:terms_heading,:terms_text,invoice_items: [:name,:quantity,:rate,:amount,:_destroy])
>>>>>>> 2ccbb8628ee8fbf8966c0af8515bdc9f52cc3d46
	end

end
