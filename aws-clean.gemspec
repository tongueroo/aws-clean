# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "aws_clean/version"

Gem::Specification.new do |spec|
  spec.name          = "aws-clean"
  spec.version       = AwsClean::VERSION
  spec.authors       = ["Tung Nguyen"]
  spec.email         = ["tongueroo@gmail.com"]
  spec.description   = %q{AWS clean tool}
  spec.summary       = %q{AWS clean tool}
  spec.homepage      = "https://github.com/tongueroo/aws-clean"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"
  spec.add_dependency "hashie"
  spec.add_dependency "colorize"
  spec.add_dependency "aws-sdk"

  # dependencies for vendor/aws-inventory
  spec.add_dependency "activesupport"
  spec.add_dependency "text-table"
  spec.add_dependency "facets"
  spec.add_dependency "actionview"
  spec.add_dependency "json"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "byebug"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-bundler"
  spec.add_development_dependency "guard-rspec"
end
