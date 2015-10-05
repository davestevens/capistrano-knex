# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-knex'
  spec.version       = '0.0.0'
  spec.authors       = ['Dave Stevens']
  spec.email         = ['dave@dstvns.co.uk']
  spec.description   = %q{knex.js migration support for Capistrano 3.x}
  spec.summary       = %q{knex.js migration support for Capistrano 3.x}
  spec.homepage      = 'https://github.com/davestevens/capistrano-knex'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ['lib']

  spec.add_dependency 'capistrano', '>= 3.0.0'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
