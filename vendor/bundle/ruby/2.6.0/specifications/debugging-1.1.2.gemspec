# -*- encoding: utf-8 -*-
# stub: debugging 1.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "debugging".freeze
  s.version = "1.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jan Lelis".freeze]
  s.date = "2020-12-29"
  s.description = "Utilities for better \"print debugging\"".freeze
  s.email = ["hi@ruby.consulting".freeze]
  s.homepage = "https://github.com/janlelis/debugging".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new([">= 2.0".freeze, "< 4.0".freeze])
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Print debugging helpers".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<paint>.freeze, [">= 0.9", "< 3.0"])
      s.add_runtime_dependency(%q<binding.repl>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.1"])
      s.add_development_dependency(%q<rdoc>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.4"])
    else
      s.add_dependency(%q<paint>.freeze, [">= 0.9", "< 3.0"])
      s.add_dependency(%q<binding.repl>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.1"])
      s.add_dependency(%q<rdoc>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.4"])
    end
  else
    s.add_dependency(%q<paint>.freeze, [">= 0.9", "< 3.0"])
    s.add_dependency(%q<binding.repl>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.1"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.4"])
  end
end
