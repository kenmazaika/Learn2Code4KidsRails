class RedirectorController < ApplicationController

        PURPOSE = {
                "B" => "Book Call"
        }

        URL = {
                "YCBM" => :booking_url
        }

        def create
                url     = URL[params[:u]]

                other = params[:o]
                subject = "#{PURPOSE[params[:p]]} - #{other}"


                NotificationMailer.tracked_event(['ken@thefirehoseproject.com', 'marco@thefirehoseproject.com'],
                        subject, current_opt_in).deliver

                redirect_to self.send(url)
        end

end
