class SubmissionMailer < ActionMailer::Base
	def received(business)
		@business = business
		@from = 'friendlyrobotatbestfriendly.ca'
		 mail(from: @from, to: @business.email, subject: 'Submission to BestFriendly.ca')
	end
end