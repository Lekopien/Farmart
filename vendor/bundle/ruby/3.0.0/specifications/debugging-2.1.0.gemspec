# -*- encoding: utf-8 -*-
# stub: debugging 2.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "debugging".freeze
  s.version = "2.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "rubygems_mfa_required" => "true" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jan Lelis".freeze]
  s.date = "2022-12-25"
  s.description = "Utilities for better \"print debugging\"".freeze
  s.email = ["hi@ruby.consulting".freeze]
  s.homepage = "https://github.com/janlelis/debugging".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new([">= 2.0".freeze, "< 4.0".freeze])
  s.rubygems_version = "3.2.32".freeze
  s.summary = "Print debugging helpers".freeze

  s.installed_by_version = "3.2.32" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<paint>.freeze, [">= 0.9", "< 3.0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 2.99"])
  else
    s.add_dependency(%q<paint>.freeze, [">= 0.9", "< 3.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.99"])
  end
end
