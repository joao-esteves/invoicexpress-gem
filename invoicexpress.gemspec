lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'invoicexpress/version'

Gem::Specification.new do |spec|
  spec.add_development_dependency 'bundler', '~> 2.1.4'

  spec.add_dependency 'faraday'
  # spec.add_dependency 'faraday_middleware'
  spec.add_dependency 'happymapper', '~> 0.4'

  spec.authors = ["Think Orange"]
  spec.name = 'invoicexpress'
  spec.description = %q{Simple wrapper for invoicexpress.com API}
  spec.email = ['info@thinkorange.pt']
  spec.authors = ["Think Orange"]
  spec.licenses = ['MIT']
  spec.homepage = "https://github.com/weareswat/invoicexpress-gem"
  spec.summary = spec.description
  spec.version = Invoicexpress::VERSION
  spec.platform = Gem::Platform::RUBY

  spec.files = %w(CHANGELOG.md README.md Rakefile invoicexpress.gemspec)
  spec.files += Dir.glob("lib/**/*.rb")
  spec.files += Dir.glob("spec/**/*")
  spec.require_paths = ['lib']
  spec.required_rubygems_version = '>= 1.3.6'
  spec.test_files = Dir.glob("spec/**/*")

  spec.add_development_dependency "rake"
end
