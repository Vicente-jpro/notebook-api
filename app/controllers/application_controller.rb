class ApplicationController < ActionController::API
	#before_action :ensure_json_request

	def ensure_json_request
	  return if request.headers["Accept"] =~ /json/
	  render json: { 
	  	notification:"You missing to specify the headers like:", 
	  	your_spesification_should_be_like: {
	  		headers_or_key: "Accept",
	  		content_type_or_value: "application/json"
	  	}
	  }, status: 406
	end
end
