#encoding: utf-8

$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mailjet/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mailjet-micro"
  s.version     = Mailjet::VERSION
  s.authors     = ["Tyler Nappy", "Jean-Baptiste Escoyez", "Aurélien AMILIN", "Benoit Bénézech"]
  s.email       = ["tyler@mailjet.com", "devrel-team@mailjet.com", "jbescoyez@gmail.com"]
  s.homepage    = "http://www.mailjet.com"
  s.summary     = "Basic Mailjet ActionMailer support"
  s.description = "Basic Mailjet ActionMailer support"


  s.files = Dir["{lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "activesupport", ">= 3.1.0"
  s.add_dependency "rack", ">= 1.4.0"
  s.add_development_dependency "actionmailer", ">= 3.0.9"
  s.add_development_dependency "minitest"
  s.add_development_dependency "minitest-matchers"
  s.add_development_dependency "rake"
  s.add_development_dependency "json"
  s.add_development_dependency "mocha"
end
