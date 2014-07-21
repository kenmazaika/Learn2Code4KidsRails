class NotificationMailer < ActionMailer::Base
  default from: "no-reply@learn2code4kids.com"

  def tracked_event(emails, subject, data)
    @data = data
    mail(to: emails,
         subject: "Learn2Code4Kids - TRACKED_EVENT: #{subject}")
  end


  def opt_in(data)
    @data = data
    mail(to: ["ken@thefirehoseproject.com", "marco@thefirehoseproject"],
         subject: "Learn2Code4Kids - OptIn")
  end


end
