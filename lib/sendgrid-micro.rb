require 'sendgrid_micro/configuration'
module SendgridMicro
  def self.configure
    yield SendgridMicro::Configuration
  end

  def self.config
    SendgridMicro::Configuration
  end
end

if defined?(ActionMailer)
  require 'action_mailer/version'
  require 'sendgrid_micro/mailer' if ActionMailer::Base.respond_to?(:add_delivery_method)
end

require 'sendgrid_micro/rack/endpoint'
