require 'spec_helper'
require 'rack/mock'

SAMPLE_SENDGRID_PAYLOAD = "{\"email\":\"elphaba@thegood.com\",\"event\":\"bounced\"}"


describe SendgridMicro::Rack::Endpoint do
  it "should decipher Sendgrid's posted events and pass them to the block" do
    # mock should receive :find with "elphaba@thegood.com" and will return true
    $user_class_mock = MiniTest::Mock.new.expect(:find, true, ["elphaba@thegood.com"])

    app = Rack::Builder.new do
      use Rack::Lint
      use SendgridMicro::Rack::Endpoint, '/callback' do |params|
        $user_class_mock.find(params['email'])#.do_smtg_with_the_user....
      end
      run lambda { |env|
        [200, {'Content-Type' => 'text/plain'}, ['defying gravity']]
      }
    end

    response = Rack::MockRequest.new(app).get('/not_callback')
    response.body.must_equal('defying gravity')

    response = Rack::MockRequest.new(app).post('/callback', :input => SAMPLE_SENDGRID_PAYLOAD)
    response.body.must_equal('')
    $user_class_mock.verify
  end
end
