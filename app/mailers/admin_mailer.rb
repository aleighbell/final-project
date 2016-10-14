class AdminMailer < ActionMailer::Base

	def business_details(business)
	    @business = business
	    @admin_email  = 'darr.dv@gmail.com'
	    mail(to: @admin_email, subject: 'New Business')
  	end

end