# frozen_string_literal: true

$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'pgapi/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'pgapi'
  s.version     = Pgapi::VERSION
  s.authors     = ['Heinrich Hanekom']
  s.email       = ['heinrich@endil.com']
  s.homepage    = 'https://pluragraph.de/'
  s.summary     = 'API for pluragraph.de'
  s.description = 'An API interface for pluragraph'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 5.1.0.beta1'
  s.add_dependency 'graphql'
  s.add_dependency 'graphql-guard'
  s.add_dependency 'cancancan'
  s.add_development_dependency 'pg'
  s.add_development_dependency 'rubocop'
end
