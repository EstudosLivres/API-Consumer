# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'api/consumer/version'

Gem::Specification.new do |spec|
  spec.name          = 'api-consumer'
  spec.version       = API::Consumer::VERSION
  spec.authors       = ['Ilton Garcia dos Santos Silveira']
  spec.email         = ['ilton@rents.com.br']

  spec.summary       = 'A simple & customizable REST-API Connector (JSON & XML)'
  spec.description   = 'It GEM allow you to call APIs just changing config attributes of it connector. The easiest & smartest API consuming.'
  spec.homepage      = 'http://estudoslivres.github.io/api-consumer'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  #================== GEMs to build it GEM, so its improve the development ==============================
  # Base GEMs to build it gem
  spec.add_development_dependency 'bundler', '~> 1.10', '>= 1.10.0'
  spec.add_development_dependency 'rake', '~> 10.0', '>= 10.0.0'

  # RSpec for tests
  spec.add_development_dependency 'rspec', '~> 3.3', '>= 3.3.0'
  # Coverage
  spec.add_development_dependency 'simplecov', '~> 0.10', '>= 0.10.0'
  # Create readable attrs values
  spec.add_development_dependency 'faker', '~> 1.5', '>= 1.5.0'

  #================== GEMs to be used when it is called on a project ====================================
  # For real user operator IP (4GeoLoc)
  spec.add_dependency 'curb', '~> 0.8', '>= 0.8.8'
  # HTTP REST Client
  spec.add_dependency 'rest-client', '~> 1.8', '>= 1.8.0'
  # Easy JSON create
  spec.add_dependency 'multi_json', '~> 1.11', '>= 1.11.2'
  # To pretty print on console
  spec.add_dependency 'colorize', '~> 0.7', '>= 0.7.7'
end
