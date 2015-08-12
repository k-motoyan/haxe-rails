$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "haxe/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "haxe-rails"
  s.version     = Haxe::Rails::VERSION
  s.authors     = ["k-motoyan"]
  s.email       = ["k.motoyan888@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of HaxeRails."
  s.description = "TODO: Description of HaxeRails."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.3"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec"
end
