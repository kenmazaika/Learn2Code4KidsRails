class LandingPagesController < ApplicationController

	def index
		@opt_in = OptIn.new
	end
	def email
		@opt_in = OptIn.create(opt_in_params)
		if @opt_in.valid?
			redirect_to syllabus_url
		else
			render :index, :status => :unprocessable_entity
		end
	end

	private

	def opt_in_params
		params.require(:opt_in).permit(:email)
	end
end
