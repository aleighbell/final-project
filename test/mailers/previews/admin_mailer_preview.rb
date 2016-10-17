class AdminMailerPreview < ActionMailer::Preview
	def business_details
		@user = Contactus.last
	   AdminMailer.business_details(@user)
  	end

end