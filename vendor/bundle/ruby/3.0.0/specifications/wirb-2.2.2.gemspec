# -*- encoding: utf-8 -*-
# stub: wirb 2.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "wirb".freeze
  s.version = "2.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jan Lelis".freeze]
  s.date = "2020-12-29"
  s.description = "WIRB syntax highlights inspected Ruby objects".freeze
  s.email = ["hi@ruby.consulting".freeze]
  s.extra_rdoc_files = ["README.md".freeze, "CHANGELOG.md".freeze, "COPYING.txt".freeze]
  s.files = ["CHANGELOG.md".freeze, "COPYING.txt".freeze, "README.md".freeze]
  s.homepage = "https://github.com/janlelis/wirb".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new([">= 2.0".freeze, "< 4.0".freeze])
  s.rubygems_version = "3.2.32".freeze
  s.summary = "WIRB Interactive Ruby".freeze

  s.installed_by_version = "3.2.32" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<paint>.freeze, [">= 0.9", "< 3.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 2.14"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_development_dependency(%q<ruby_engine>.freeze, ["~> 1.0"])
  else
    s.add_dependency(%q<paint>.freeze, [">= 0.9", "< 3.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.14"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<ruby_engine>.freeze, ["~> 1.0"])
  end
end
