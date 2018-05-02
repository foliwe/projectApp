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
	end

	def update

	end

end
