# frozen_string_literal: true

require_relative "lib/knockapi/version"

Gem::Specification.new do |s|
  s.name = "knockapi"
  s.version = Knockapi::VERSION
  s.summary = "Ruby library to access the Knock API"
  s.authors = ["Knock"]
  s.email = "support@knock.app"
  s.homepage = "https://gemdocs.org/gems/knockapi"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/knocklabs/knock-ruby"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.2.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "connection_pool"
end
