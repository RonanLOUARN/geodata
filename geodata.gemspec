# frozen_string_literal: true

require_relative 'lib/geodata/version'

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'geodata'
  spec.version       = Geodata::VERSION
  spec.authors       = ['Ronan Louarn']
  spec.email         = ['ronan33720@hotmail.com']

  spec.files = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.summary = 'A library for continents and their countries'
  spec.description = 'Get countries by continent, or find the continents for a country given ISO 3166-1 alpha-2, alpha-3 and numeric codes'
  spec.homepage = 'https://github.com/RonanLOUARN/geodata'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')
  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/RonanLOUARN/geodata'
  spec.metadata['changelog_uri'] = 'https://github.com/RonanLOUARN/geodata/commits/master'


  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
