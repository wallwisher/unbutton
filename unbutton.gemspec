# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'unbutton/version'

Gem::Specification.new do |gem|
  gem.name          = "unbutton"
  gem.version       = Unbutton::VERSION
  gem.authors       = ["Nitesh Goel"]
  gem.email         = ["nitesh@wallwisher.com"]
  gem.description   = %q{Unbutton provides a set of helper methods to share content on the web without crappy buttons}
  gem.summary       = %q{Generate facebook, twitter, linkedin, pinterest share links}
  gem.homepage      = "http://github.com/wallwisher/unbutton"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.required_ruby_version = '>= 1.9.0'
end
