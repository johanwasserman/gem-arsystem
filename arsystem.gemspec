# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'arsystem/version'

Gem::Specification.new do |spec|
  spec.name          = "arsystem"
  spec.version       = Arsystem::VERSION
  spec.authors       = ["Johan Wasserman"]
  spec.email         = ["johan.wasserman@gmial.com"]
  spec.summary       = %q{JRuby compatible Remedy client}
  spec.description   = %q{JRuby compatible Remedy client - written written initially to extract data for Neo4J}
  spec.homepage      = "https://github.com/johanwasserman/jARSystem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
