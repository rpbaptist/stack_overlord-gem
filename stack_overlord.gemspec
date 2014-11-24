# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stack_overlord/version'

Gem::Specification.new do |spec|
  spec.name          = "stack_overlord"
  spec.version       = StackOverlord::VERSION
  spec.authors       = ["Michael Karouzos & Peter Soderberg & Nick Brown & Richard Baptist"]
  spec.email         = ["StackOverlord@gmail.com"]
  spec.summary       = %q{Enlist an overlord to handle error messages}
  spec.description   = %q{This gem listens for exceptions raised by Ruby and provides links to the the most relevent answers on StackOverflow and Ruby-docs.}
  spec.homepage      = "http://www.stackoverlord.com"
  spec.license       = "MIT"
  spec.platform      = Gem::Platform::RUBY

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "json"
  spec.add_dependency "rest_client"
  spec.add_dependency "macaddr"
  spec.add_dependency "encrypted_strings"
  spec.add_development_dependency "rspec"
end
