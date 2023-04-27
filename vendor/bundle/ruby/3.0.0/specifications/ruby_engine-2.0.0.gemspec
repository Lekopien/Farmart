# -*- encoding: utf-8 -*-
# stub: ruby_engine 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "ruby_engine".freeze
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jan Lelis".freeze]
  s.date = "2020-01-04"
  s.description = "Gives you an RubyEngine class that simplifies checking for your Ruby implementation.".freeze
  s.email = ["hi@ruby.consulting".freeze]
  s.homepage = "https://github.com/janlelis/ruby_engine".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.32".freeze
  s.summary = "Adds the RubyEngine pseudo-constant.".freeze

  s.installed_by_version = "3.2.32" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<rdoc>.freeze, ["~> 3.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 2.4"])
    s.add_development_dependency(%q<rubygems-tasks>.freeze, ["~> 0.2"])
  else
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.4"])
    s.add_dependency(%q<rubygems-tasks>.freeze, ["~> 0.2"])
  end
end
