require_relative 'boot'

require 'rails/all'
require 'rack'
require 'rack/cors'

Bundler.require(*Rails.groups)

module DataBlogProject
  class Application < Rails::Application
    config.load_defaults 6.0
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'http://localhost:3001'
        resource '*', :headers => :any, :methods => [:get, :post, :options]
      end
    end
  end
end
