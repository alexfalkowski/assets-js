$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem'gem version:
require 'assets-js/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |gem|
  gem.name        = 'assets-js'
  gem.version     = AssetsJs::VERSION
  gem.authors     = ['Alex Falkowski']
  gem.email       = %w(alexrfalkowski@gmail.com)
  gem.homepage    = 'https://github.com/alexfalkowski/assets-js'
  gem.summary     = 'A client side version of the Asset Pipeline'
  gem.description = 'A client side version of the Asset Pipeline'

  gem.files = Dir['{app,config,db,lib}/**/*'] + %w(MIT-LICENSE Rakefile README.md)
  gem.test_files = Dir['spec/**/*']

  gem.add_dependency 'rails', '~> 3.2.14'
  gem.add_development_dependency 'uglifier'
  gem.add_development_dependency 'rspec-given'
  gem.add_development_dependency 'capybara'
  gem.add_development_dependency 'poltergeist'
  gem.add_development_dependency 'rspec-rails'
  gem.add_development_dependency 'jquery-rails'
  gem.add_development_dependency 'coffee-rails'
  gem.add_development_dependency 'slim'
end
