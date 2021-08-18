# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "knock/version"

Gem::Specification.new do |spec|
  spec.name = "knockapi"
  spec.version = Knock::VERSION
  spec.authors = ["Knock Labs, Inc."]
  spec.email = ["support@knock.app"]
  spec.description = "API client for Knock"
  spec.summary = "API client for Knock"
  spec.homepage = "https://github.com/knocklabs/knock-ruby"
  spec.license = "MIT"
  spec.metadata = {
    "documentation_uri" => "https://docs.knock.app"
  }

  spec.files = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 2.0.1"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "standard"

  spec.required_ruby_version = ">= 2.5"
end
