# -*- encoding: utf-8 -*-
# stub: fancy_irb 1.4.3 ruby lib

Gem::Specification.new do |s|
  s.name = "fancy_irb".freeze
  s.version = "1.4.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jan Lelis".freeze]
  s.date = "2021-03-20"
  s.description = "A fancy IRB has a colorful input prompt and profiles rocket-style #=> return values".freeze
  s.email = ["hi@ruby.consulting".freeze]
  s.homepage = "https://github.com/janlelis/fancy_irb".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.requirements = ["Windows: ansicon <https://github.com/adoxa/ansicon>".freeze]
  s.rubygems_version = "3.2.32".freeze
  s.summary = "FancyIrb makes IRB # => friendly.".freeze

  s.installed_by_version = "3.2.32" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<paint>.freeze, [">= 0.9", "< 3.0"])
    s.add_runtime_dependency(%q<unicode-display_width>.freeze, [">= 1.1"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.2"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.4"])
  else
    s.add_dependency(%q<paint>.freeze, [">= 0.9", "< 3.0"])
    s.add_dependency(%q<unicode-display_width>.freeze, [">= 1.1"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.2"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.4"])
  end
end
