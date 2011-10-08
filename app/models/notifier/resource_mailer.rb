module Notifier
  class ResourceMailer < ActionMailer::Base
    def new_resource(resource, sent_at = Time.now)
      subject       "[#{Notifier::CONFIG[:application_name]}] New #{resource.class} was created"
      recipients    Notifier::CONFIG[:notifications_email_address]
      from          Notifier::CONFIG[:notifications_email_address]
      sent_on       sent_at
    
      body          :resource => resource
    end
  end
end
