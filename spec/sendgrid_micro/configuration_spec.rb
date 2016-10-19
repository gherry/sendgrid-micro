require 'spec_helper'

describe SendgridMicro::Configuration do
  describe "accessors" do
    it "should memorize values" do
      SendgridMicro::Configuration.username = 'Wicked witch of the west'
      SendgridMicro::Configuration.username.must_equal 'Wicked witch of the west'
    end
  end
end
