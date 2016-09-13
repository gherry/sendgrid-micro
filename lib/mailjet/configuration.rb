require 'active_support/core_ext/module/attribute_accessors'

module Mailjet
  module Configuration
    mattr_accessor :api_key
    mattr_accessor :secret_key
  end
end
