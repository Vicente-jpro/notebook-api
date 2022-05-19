class AddressController < ApplicationController
	before_action :set_address
	def show 
	end
	def set_address 
	   @address = Contact.find(params[:contact_id]).address
	end
end
