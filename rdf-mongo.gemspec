#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

begin
  RUBY_ENGINE
rescue NameError
  RUBY_ENGINE = "ruby"  # Not defined in Ruby 1.8.7
end

Gem::Specification.new do |gem|
  gem.version            = File.read('VERSION').chomp
  gem.date               = File.mtime('VERSION').strftime('%Y-%m-%d')

  gem.name               = 'rdf-mongo'
  gem.homepage           = 'https://ruby-rdf.github.com/rdf-mongo'
  gem.license            = 'MIT' if gem.respond_to?(:license=)
  gem.summary            = 'A storage adapter for integrating MongoDB and rdf.rb, a Ruby library for working with Resource Description Framework (RDF) data.'
  gem.description        = 'rdf-mongo is a storage adapter for integrating MongoDB and rdf.rb, a Ruby library for working with Resource Description Framework (RDF) data.'

  gem.authors            = ['Pius Uzamere', 'Gregg Kellogg']
  gem.email              = ['pius@alum.mit.edu', 'gregg@greggkellogg.net']

  gem.platform           = Gem::Platform::RUBY
  gem.files              = %w(LICENSE VERSION README.md) + Dir.glob('lib/**/*.rb')
  gem.require_paths      = %w(lib)
  gem.test_files         = Dir.glob('spec/*.spec')

  gem.required_ruby_version      = '>= 2.4'
  gem.requirements               = []
  gem.add_runtime_dependency     'rdf',             '>= 3.1'
  gem.add_runtime_dependency     'mongo',           '~> 2.14'

  gem.add_development_dependency 'rdf-spec',        '>= 3.1'
  gem.add_development_dependency 'rspec',           '~> 3.10'
  gem.add_development_dependency 'rspec-its',       '~> 1.3'
  gem.add_development_dependency 'yard',            '~> 0.9'
end
