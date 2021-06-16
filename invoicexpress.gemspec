lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'invoicexpress/version'

Gem::Specification.new do |spec|
  spec.add_development_dependency 'bundler', '~> 2.1.4'

  spec.add_dependency 'faraday', '~> 1.3'
   spec.add_dependency 'faraday_middleware', '~> 1.0.0'
  spec.add_dependency 'happymapper', '~> 0.4'

  spec.authors = ["Think Orange"]
  spec.description = %q{Simple wrapper for invoicexpress.com API}
  spec.email = ['info@thinkorange.pt']
  spec.files = %w(CHANGELOG.md README.md Rakefile invoicexpress.gemspec)
  spec.files += Dir.glob("lib/**/*.rb")
  spec.files += Dir.glob("spec/**/*")
  spec.homepage = "http://invoicexpress.com"
  spec.licenses = ['MIT']
  spec.name = 'invoicexpress'
  spec.require_paths = ['lib']
  spec.required_rubygems_version = '>= 1.3.6'
  spec.summary = spec.description
  spec.test_files = Dir.glob("spec/**/*")
  spec.version = Invoicexpress::VERSION
end
