# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'raps/version'

Gem::Specification.new do |spec|
  spec.name          = 'raps'
  spec.version       = Raps::VERSION
  spec.authors       = ['maruware']
  spec.email         = ['me@maruware.com']

  spec.summary       = 'Rack server to delivery rails public server.'
  spec.description   = 'Rack server to delivery rails public server.'
  spec.homepage      = 'https://github.com/maruware/raps'

  spec.files = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.require_paths = ['lib']

  spec.add_dependency 'mimemagic', '~> 0.3'
  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
