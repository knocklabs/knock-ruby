# frozen_string_literal: true

require_relative "lib/knock/version"

Gem::Specification.new do |s|
  s.name = "knock"
  s.version = Knock::VERSION
  s.summary = "Ruby library to access the Knock API"
  s.authors = ["Knock"]
  s.email = "support@knock.app"
  s.files = Dir["lib/**/*.rb", "rbi/**/*.rbi", "sig/**/*.rbs", "manifest.yaml"]
  s.extra_rdoc_files = ["README.md"]
  s.required_ruby_version = ">= 3.0.0"
  s.add_dependency "connection_pool"
  s.homepage = "https://gemdocs.org/gems/knock/latest"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/stainless-sdks/knock-ruby"
  s.metadata["rubygems_mfa_required"] = "false"
end
