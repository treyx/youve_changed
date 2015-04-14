require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module YouveChanged
  class Application < Rails::Application
    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
    config.active_job.queue_adapter = :sidekiq

    config.action_mailer.delivery_method = :smtp

    config.action_mailer.smtp_settings = {
      address:              "smtp.mandrillapp.com",
      port:                 "587",
      domain:               "youvechanged.com",
      user_name:            "f7a51640@opayq.com",
      password:             "Meb018km1JaIHRhF-JtzNw",
      authentication:       "plain",
      enable_starttls_auto: true

    }
  end
end
