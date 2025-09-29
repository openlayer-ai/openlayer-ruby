# frozen_string_literal: true

require_relative "lib/openlayer/version"

Gem::Specification.new do |s|
  s.name = "openlayer"
  s.version = Openlayer::VERSION
  s.summary = "Ruby library to access the Openlayer API"
  s.authors = ["Openlayer"]
  s.email = "support@openlayer.com"
  s.homepage = "https://gemdocs.org/gems/openlayer"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/stainless-sdks/openlayer-ruby"
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
