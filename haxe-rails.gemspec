# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'haxe/rails/version'

Gem::Specification.new do |s|
  s.name        = 'haxe-rails'
  s.version     = Haxe::Rails::VERSION
  s.authors     = ['k-motoyan']
  s.email       = ['k.motoyan888@gmail.com']
  s.homepage    = 'https://github.com/k-motoyan/haxe-rails'
  s.summary     = 'Haxe adapter for the Rails asset pipeline.'
  s.description = 'Haxe adapter for the Rails asset pipeline.'
  s.license     = 'MIT'

  s.files = Dir['lib/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['spec/**/*']

  s.add_runtime_dependency 'haxe-cli-proxy', '>= 0.3'
  s.add_runtime_dependency 'rails', '>= 4'
  s.add_runtime_dependency 'tilt', '>= 2'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'codeclimate-test-reporter'
end
