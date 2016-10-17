class SubmissionMailerPreview < ActionMailer::Preview
	def received
		@user = Contactus.last
		SubmissionMailer.received(@user)
	end
end