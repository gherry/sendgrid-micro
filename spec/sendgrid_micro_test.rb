require 'spec_helper'

describe SendgridMicro do
  describe "#configure" do
    it "should permit to set api keys and remember them" do
      SendgridMicro.configure do |config|
        config.username = "Elphaba"
        config.password = "wicked"
        config.domain   = "elphaba@thegood.com"
      end

      SendgridMicro.config.username.must_equal "Elphaba"
      SendgridMicro.config.password.must_equal "wicked"
      SendgridMicro.config.domain.must_equal "elphaba@thegood.com"
    end
  end
end
