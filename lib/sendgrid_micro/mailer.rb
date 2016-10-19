require 'action_mailer'
require 'mail'

class SendgridMicro::Mailer < ::Mail::SMTP
  def initialize(options = {})
    super({
      :user_name => SendgridMicro.config.username,
      :password => SendgridMicro.config.password,
      :domain => SendgridMicro.config.domain,
      :address => 'smtp.sendgrid.net',
      :port => 587,
      :authentication => :plain,
      :enable_starttls_auto => true
    }.merge(options))
  end
end

ActionMailer::Base.add_delivery_method :sendgrid, SendgridMicro::Mailer
