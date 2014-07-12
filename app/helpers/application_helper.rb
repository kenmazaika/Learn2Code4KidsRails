module ApplicationHelper

  def closest_upcoming_monday
	today = Time.now.strftime("%A")
	if today == "Monday"
		return Time.now
	else
		Chronic.parse('next monday', :ambiguous_time_range => :none)
	end
  end


  def closest_weekday_in_future
  	tomorrow = Time.now + 1 .day
  	return closest_upcoming_monday if ["Saturday", "Sunday"].include?(tomorrow.strftime("%A"))
  	tomorrow
  end

end
