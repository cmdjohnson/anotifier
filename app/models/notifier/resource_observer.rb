module Notifier
  class ResourceObserver < ActiveRecord::Observer
    observe ActiveRecord::Base

    def after_create resource
      ################################################################################
      # generic notification service
      ################################################################################
      Notifier::ResourceMailer.deliver_new_resource(resource)
    end
  end
end
