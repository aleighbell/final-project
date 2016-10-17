class AdminMailer < ActionMailer::Base

	def business_details(business)
	    @business = business
	    @from = 'friendlyrobotatbestfriendly.ca'
	    @admin_email  = 'myemailatbestfriendly.ca'
	    mail(from: @from, to: @admin_email, subject: 'New Business Submission')
  	end

end