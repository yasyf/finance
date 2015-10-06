# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'finance/version'

Gem::Specification.new do |spec|
  spec.name          = "finance"
  spec.version       = Finance::VERSION
  spec.authors       = ["Yasyf Mohamedali"]
  spec.email         = ["yasyfm@gmail.com"]
  spec.summary       = "Finance"
  spec.description   = "Finance"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency 'money', '~> 6.5.0'
  spec.add_runtime_dependency 'google_currency', '~> 3.2.0'
end
