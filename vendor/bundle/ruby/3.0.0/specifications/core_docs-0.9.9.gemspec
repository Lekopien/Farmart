# -*- encoding: utf-8 -*-
# stub: core_docs 0.9.9 ruby lib

Gem::Specification.new do |s|
  s.name = "core_docs".freeze
  s.version = "0.9.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["John Mair (banisterfiend)".freeze, "Jan Lelis (non-pry version)".freeze]
  s.date = "2022-12-26"
  s.description = "This gem enables you to be able to display the source code and the docs\nof Ruby methods and classes implemented in C.\n".freeze
  s.email = ["jrmair@gmail.com".freeze, "hi@ruby.consulting".freeze]
  s.homepage = "https://github.com/janlelis/core_docs".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new([">= 2.0".freeze, "< 4.0".freeze])
  s.rubygems_version = "3.2.32".freeze
  s.summary = "Provides YARD and extended documentation support".freeze

  s.installed_by_version = "3.2.32" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<yard>.freeze, ["~> 0.9.11"])
    s.add_development_dependency(%q<latest_ruby>.freeze, ["~> 0.0"])
    s.add_development_dependency(%q<bacon>.freeze, ["~> 1.1"])
  else
    s.add_dependency(%q<yard>.freeze, ["~> 0.9.11"])
    s.add_dependency(%q<latest_ruby>.freeze, ["~> 0.0"])
    s.add_dependency(%q<bacon>.freeze, ["~> 1.1"])
  end
end
