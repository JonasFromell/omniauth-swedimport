# -*- encoding: utf-8 -*-
$:.push File.expand('../lib', __FILE__)
require 'omniauth/swedimport/version'

Gem::Specification.new do |s|
  s.name    = 'omniauth-swedimport'
  s.version = OmniAuth::Swedimport::VERSION
  s.authors = ['Jonas Fromell']
  s.email   = ['jonas.per.fromell@gmail.com']
  s.summary = 'Swedimport OAuth2 strategy for OmniAuth'
  s.homepage= 'https://github.com/JonasFromell/omniauth-swedimport'
  s.license = 'MIT'

  s.files     = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'omniauth-oauth2'

  s.add_development_dependeny 'minitest'
  s.add_development_dependeny 'rake'
end