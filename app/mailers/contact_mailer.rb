class ContactMailer < ApplicationMailer
	default from: 'notifications@example.com'

	def welcome_email(contact)
		@contact = contact
		@url  = 'http://localhost:3000/articles'
		mail(to: @contact.email, subject: 'Welcome to My Awesome Site')
	end
end
