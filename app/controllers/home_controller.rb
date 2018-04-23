class HomeController < ApplicationController

	def index
	end

	def terms_condition	
	end
	
	def about_us
	end

	def show
	end

	def contact_us		
	end

	def new_contact
		@contact =Contact.new		
	end

	def create_contact
		@contact =Contact.new(contact_params)
		if @contact.save
			ContactMailer.welcome_email(@contact).deliver_now
			redirect_to articles_path
		else
			render 'new'			
		end
	end

	private
	def contact_params
		params.require(:contact).permit(:firstname, :lastname, :email, :phone, :message)
	end
end
