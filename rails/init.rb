# -*- encoding : utf-8 -*-
################################################################################
# init.rb
################################################################################

# Load the config file
require 'config/notifier_config'

raise "notifier: Please create a config file config/initializers/notifier_config.rb" unless defined? Notifier::CONFIG

config.after_initialize do
  ActiveRecord::Base.observers << Notifier::ResourceObserver
end
