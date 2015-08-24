# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mapmyindia_ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "mapmyindia_ruby"
  spec.version       = MapmyindiaRuby::VERSION
  spec.authors       = "Ashwin"
  spec.email         = "s.ashwinkumar2490@gmail.com"

  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  # end

  spec.summary       = "Map my india API ruby client"
  spec.description   = "This is a ruby  gem/client for the mapmyindia REST APIs. This will be edited later to show usage "
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "httparty"
end
