# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubrb/version'

Gem::Specification.new do |s|
  s.name        = 'rubrb'
  s.version     = Rubrb::VERSION
  s.platform    = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.0'
  s.date        = '2016-06-26'
  s.summary     = "command line toolset for R things"
  s.description = "command line toolset for running R things"
  s.authors     = "Scott Chamberlain"
  s.email       = 'myrmecocystus@gmail.com'
  s.homepage    = 'http://github.com/sckott/rubrb'
  s.licenses    = 'MIT'

  s.files = `git ls-files -z`.split("\x0").reject {|f| f.match(%r{^(test|spec|features)/}) }
  s.require_paths = ["lib"]

  s.bindir      = 'bin'
  s.executables = ['rb']

  s.add_development_dependency "bundler", '~> 1.12', '>= 1.12.5'
  s.add_development_dependency "rake", '~> 11.1', '>= 11.1.2'
  s.add_development_dependency "test-unit", '~> 3.1', '>= 3.1.9'

  s.add_runtime_dependency 'thor', '~> 0.19.1'
  s.add_runtime_dependency 'safe_yaml', '~> 1.0', '>= 1.0.4'
end
