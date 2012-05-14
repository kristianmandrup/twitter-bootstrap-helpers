# -*- encoding: utf-8 -*-
require File.expand_path('../lib/twitter-bootstrap-helpers/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Bradly Feeley"]
  gem.email         = ["bradlyf@gmail.com"]
  gem.description   = "A set of Ruby on Rails view helpers to be used with Twitter Bootstrap"
  gem.summary       = "A set of Ruby on Rails view helpers to be used with Twitter Bootstrap"
  gem.homepage      = "https://github.com/bradly/twitter-bootstrap-helpers"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "twitter-bootstrap-helpers"
  gem.require_paths = ["lib"]
  gem.version       = TwitterBootstrapHelpers::VERSION
end
