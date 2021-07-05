# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mailcheckjs-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "mailcheckjs-rails"
  spec.version       = Mailcheckjs::Rails::VERSION
  spec.authors       = ["Michael J. Cohen"]
  spec.email         = ["mjc@kernel.org"]
  spec.description   = %q{Mailcheck.js for Rails'}
  spec.summary       = %q{Mailcheck.js is a Javascript library and jQuery plugin that suggests a right domain when your users misspell it in an email address.}
  spec.homepage      = "https://github.com/mjc/mailcheckjs-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rdoc", "~> 6.3"
  spec.add_development_dependency "jeweler", "~> 2.3.9"

  spec.add_dependency 'railties', ">= 3.2"
end
