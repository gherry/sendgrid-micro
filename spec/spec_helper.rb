require 'minitest/autorun'
require 'minitest/matchers'
require 'minitest/pride'
require 'sendgrid-micro'

MiniTest::Spec.before do
  SendgridMicro.configure do |config|
    config.username = "Glinda"
    config.password = "thegood"
    config.domain   = "glinda@wicked.com"
  end
end
