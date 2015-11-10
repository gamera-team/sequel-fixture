# -*- encoding: utf-8 -*-
require File.expand_path('../lib/sequel-fixture/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'gamera-sequel-fixture'
  gem.authors       = ['Eric Dobbs', 'Glen Aultman-Bettridge', 'Jillian Rosile']
  gem.email         = ['eric@dobbse.net', 'glenab@koansolutions.net', 'jillian.rosile@gmail.com']
  gem.description   = %q{Flexible fixtures for the Sequel Gem inspired in Rails 2 fixtures}
  gem.summary       = %q{Flexible fixtures for the Sequel Gem inspired in Rails 2 fixtures. Temporary fork of https://github.com/whitepages/sequel-fixture to add ERB support}
  gem.homepage      = "http://github.com/gamera-team/sequel-fixture"

  gem.add_dependency "sequel"         # Stating the obvious
  gem.add_dependency "gamera-symbolmatrix"   # Because its easy to use

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "fast"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.version       = Sequel::Fixture::VERSION
end
