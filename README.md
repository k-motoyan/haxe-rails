# HaxeRails

[![wercker status](https://app.wercker.com/status/eef2f567ea674b9df30a472759d85b16/s/master "wercker status")](https://app.wercker.com/project/bykey/eef2f567ea674b9df30a472759d85b16)
[![Test Coverage](https://codeclimate.com/github/k-motoyan/haxe-rails/badges/coverage.svg)](https://codeclimate.com/github/k-motoyan/haxe-rails/coverage)
[![Code Climate](https://codeclimate.com/github/k-motoyan/haxe-rails/badges/gpa.svg)](https://codeclimate.com/github/k-motoyan/haxe-rails)

Haxe adapter for the Rails asset pipeline.

## Installation

Add the gem to Gemfile.
 
```
gem 'haxe-rails'
```

Run `bundle install`.
    
## Usage

1 Create haxe project under the `app/assets/javascript`.

```
rails_project/
  app/
    assets/
      javascripts/
        haxe_project
```

2 Create `hxml` file under the haxe project directory.

```diff
  rails_project/
    app/
      assets/
        javascripts/
          haxe_project
+           compile.hxml
```

> haxe-rails compiles using hxml file.

3 Add a postscript to hxml path in under the assets/*.js file.

```diff
+ //= require haxe_project/compile
```

Or Add a postscript to a hxml file path in `Rails.application.config.assets.precompile` of the `config/initizlizers/assets.rb`.

```rb
Rails.application.config.assets.precompile += %w( haxe_project/compile.js )
```

> It is necessary for the extension of hxml file to make `.js`.
