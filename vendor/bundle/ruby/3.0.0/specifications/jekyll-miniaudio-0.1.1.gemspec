# -*- encoding: utf-8 -*-
# stub: jekyll-miniaudio 0.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-miniaudio".freeze
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["hailengc".freeze]
  s.bindir = "exe".freeze
  s.date = "2018-11-09"
  s.description = "A minimal audio plugin for Jekyll, with HTML5 audio elemnt.".freeze
  s.email = ["hailengc@gmail.com".freeze]
  s.homepage = "https://github.com/hailengc/jekyll-miniaudio".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.5".freeze
  s.summary = "A minimal audio plugin for Jekyll".freeze

  s.installed_by_version = "3.3.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.16"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_runtime_dependency(%q<jekyll>.freeze, ["~> 3.8"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.16"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_dependency(%q<jekyll>.freeze, ["~> 3.8"])
  end
end
