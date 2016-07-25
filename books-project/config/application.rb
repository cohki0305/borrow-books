require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'amazon/ecs'


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# Amazon::Ecs.options = {
#   :associate_tag =>     ENV['ACCOCIATE_TAG'],
#   :AWS_access_key_id => ENV['ACCESS_KYE'],
#   :AWS_secret_key =>    ENV['SECRET_KYE']
# }

# Amazon::Ecs.configure do |options|
#   options[:AWS_access_key_id] = 'AKIAIAX6LQGTLORGY3NQ'
#   options[:AWS_secret_key] = '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'
#   options[:associate_tag] = 'cohki0305-22'
# end

Amazon::Ecs.configure do |options|
  options[:AWS_access_key_id] = 'AKIAIAX6LQGTLORGY3NQ'
  options[:AWS_secret_key] = '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'
  options[:associate_tag] = 'cohki0305-22'
end


module BooksProject
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
  end
end
