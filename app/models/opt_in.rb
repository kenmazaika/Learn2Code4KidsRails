class OptIn < ActiveRecord::Base
	validates :email, :email => true
	after_create :email_us

	def email_us
		NotificationMailer.opt_in(self).deliver
	end
end
