# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_sierra_models/version'

Gem::Specification.new do |spec|
  spec.name          = "active_sierra_models"
  spec.version       = ActiveSierraModels::VERSION
  spec.authors       = ["James Van Mil"]
  spec.email         = ["james.vanmil@gmail.com"]
  spec.summary       = ["Active record models extracted from ActiveSierra engine"]
  spec.description   = ["Description"]
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord"
  spec.add_dependency "pg"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
