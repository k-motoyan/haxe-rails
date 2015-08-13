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

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_runtime_dependency 'haxe-cli-proxy'
  s.add_runtime_dependency 'railties'
  s.add_runtime_dependency 'sprockets'
  s.add_runtime_dependency 'tilt'
  s.add_runtime_dependency 'rails'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'codeclimate-test-reporter'
end
