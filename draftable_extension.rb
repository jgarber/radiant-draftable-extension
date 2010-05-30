# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'

class DraftableExtension < Radiant::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/draftable"
  
  # extension_config do |config|
  #   config.gem 'some-awesome-gem
  #   config.after_initialize do
  #     run_something
  #   end
  # end

  # See your config/routes.rb file in this extension to define custom routes
  
  def activate
    # ScopedValidation is a pre-emptive hack that shouldn't run more than once.
    require 'draftable/scoped_validation'
  end
end
