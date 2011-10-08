module Anotifier
  class ResourceObserver < ActiveRecord::Observer
    observe ActiveRecord::Base

    def after_create resource
      ################################################################################
      # generic notification service
      ################################################################################
      Anotifier::ResourceMailer.deliver_new_resource(resource)
    end
  end
end
