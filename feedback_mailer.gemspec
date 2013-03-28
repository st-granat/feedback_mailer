# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'feedback_mailer/version'

Gem::Specification.new do |gem|
  gem.name          = "feedback_mailer"
  gem.version       = FeedbackMailer::VERSION
  gem.authors       = ["Андрей [ws70]"]
  gem.email         = ["railscode@gmail.com"]
  gem.description   = "Feedback Mailer for Rails app"
  gem.summary       = "Feedback Mailer for Rails app"
  gem.homepage      = "https://github.com/vav/feedback_mailer"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "rails", ">= 2.3.12"
end
