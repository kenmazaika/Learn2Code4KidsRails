class OptIn < ActiveRecord::Base
	validates :email, :email => true
end
