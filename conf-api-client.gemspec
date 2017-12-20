# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'conf/api/client/version'

Gem::Specification.new do |spec|
  spec.name          = 'conf-api-client'
  spec.version       = Conf::Api::Client::VERSION
  spec.authors       = ['Alex Mishyn', 'Serdar Gokay Kucuk', 'Vladimir Tyshkevich', 'Eugene Piven']
  spec.email         = ['epiven@gmail.com']
  spec.homepage      = 'https://github.com/pegasd/conf-api-client'
  spec.summary       = 'Rest client to confluence JSON api'
  spec.description   = 'Rest client to confluence api with ability to upload files and edit pages.'
  spec.license       = 'MIT'
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'

  spec.add_runtime_dependency 'json', '>= 1'
  spec.add_runtime_dependency 'faraday', '~> 0.12'
  spec.add_runtime_dependency 'mimemagic', '~> 0.3'
end
