# -*- encoding : utf-8 -*-
################################################################################
# init.rb
################################################################################

# Load the config file
require 'config/anotifier_config'

raise "anotifier: Please create a config file config/anotifier_config.rb" unless defined? Anotifier::CONFIG

config.after_initialize do
	ActiveRecord::Base.observers << Anotifier::ResourceObserver
end
