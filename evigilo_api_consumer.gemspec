# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'evigilo_api_consumer/version'

Gem::Specification.new do |spec|
  spec.name          = "evigilo_api_consumer"
  spec.version       = EvigiloApiConsumer::VERSION
  spec.authors       = ["KensoDev"]
  spec.email         = ["avi@kensodev.com"]
  spec.summary       = %q{API Consumer for the Evigilo api}
  spec.description   = %q{Api Consumer for the Evigilo api}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'httparty', '~> 0.13.3'
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'simplecov'
end
