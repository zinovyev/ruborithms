# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path(__dir__, 'lib')
$:.unshift lib unless $:.include? lib
require 'ruborithms/version'

Gem::Specification.new do |s|
  s.name        = 'ruborithms'
  s.version     = Ruborithms::VERSION
  s.summary     = "Algorithms and data structures built with Ruby"
  s.description = "Algorithms and data structures built with Ruby"
  s.authors     = ["Ivan Zinovyev"]
  s.email       = 'vanyazin@gmail.com'
  s.files       = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{(:?^(:?test|spec|features)/)|(?:\.gemspec$)})
  end
  s.homepage    = 'https://github.com/zinovyev/ruborithms'
  s.license     = 'MIT'
  s.add_development_dependency "rspec", "~> 3.5"
end
