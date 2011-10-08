module Notifier
  class ResourceMailer < ActionMailer::Base
    def new_resource(resource, sent_at = Time.now)
      subject       "[#{property(:base_url)}] New #{resource.class} was created"
      recipients    property(:notification_email)
      from          property(:noreply_email)
      sent_on       sent_at
    
      body          :resource => resource
    end
  end
end
