RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem 'RedCloth',
    :lib => 'redcloth',
    :version => "~> 4.2.2"
  config.gem 'haml',
    :version => '~> 2.2.0'
  config.gem 'mongo',
    :source => 'http://gemcutter.org',
    :version => '~> 0.18.2'
  config.gem 'mongo_mapper',
    :source => 'http://gemcutter.org'
  config.gem 'mongo_mapper_generators'
  config.gem 'chriseppstein-compass', 
    :lib => 'compass',
    :source => 'http://gems.github.com', 
    :version => '~> 0.8.17'
  config.gem 'warden'
  config.gem 'devise'
    
  config.frameworks -= [ :active_record, :active_resource, :action_mailer ]
  
  # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
  # Run "rake -D time" for a list of tasks for finding time zone names.
  config.time_zone = 'UTC'
end

Haml::Template.options[:format] = :html5