module Anotifier
  class ResourceMailer < ActionMailer::Base
    def new_resource(resource, sent_at = Time.now)
      subject       "[#{Anotifier::CONFIG[:application_name]}] New #{resource.class} was created"
      recipients    Anotifier::CONFIG[:notifications_email_address]
      from          Anotifier::CONFIG[:notifications_email_address]
      sent_on       sent_at
      content_type  "text/html"
    
      body          :resource => resource
    end
  end
end
