require 'active_support/core_ext/module/attribute_accessors'

module SendgridMicro
  module Configuration
    mattr_accessor :username
    mattr_accessor :password
    mattr_accessor :domain
  end
end
