require 'mailjet/configuration'
module Mailjet
  def self.configure
    yield Mailjet::Configuration
  end

  def self.config
    Mailjet::Configuration
  end
end

if defined?(ActionMailer)
  require 'action_mailer/version'
  require 'mailjet/mailer' if ActionMailer::Base.respond_to?(:add_delivery_method)
end

require 'mailjet/rack/endpoint'
