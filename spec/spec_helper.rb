require 'minitest/autorun'
require 'minitest/matchers'
require 'minitest/pride'
require 'mailjet'

MiniTest::Spec.before do
  Mailjet.configure do |config|
    config.api_key = 'aaaa'
    config.secret_key = 'bbbb'
  end
end
