# -*- encoding: utf-8 -*-
# stub: irbtools 4.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "irbtools".freeze
  s.version = "4.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "rubygems_mfa_required" => "true" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jan Lelis".freeze]
  s.date = "2023-01-02"
  s.description = "The Irbtools make working with Ruby's IRB console more fun & productive.".freeze
  s.email = ["hi@ruby.consulting".freeze]
  s.homepage = "https://github.com/janlelis/irbtools".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new([">= 3.0".freeze, "< 4.0".freeze])
  s.rubygems_version = "3.2.32".freeze
  s.summary = "Irbtools happy IRB.".freeze

  s.installed_by_version = "3.2.32" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<irb>.freeze, ["~> 1.6.2"])
    s.add_runtime_dependency(%q<every_day_irb>.freeze, ["~> 2.2"])
    s.add_runtime_dependency(%q<fancy_irb>.freeze, ["~> 1.2", ">= 1.2.1"])
    s.add_runtime_dependency(%q<wirb>.freeze, ["~> 2.0", ">= 2.2.1"])
    s.add_runtime_dependency(%q<hirb>.freeze, ["~> 0.7", ">= 0.7.3"])
    s.add_runtime_dependency(%q<paint>.freeze, [">= 0.9", "< 3.0"])
    s.add_runtime_dependency(%q<clipboard>.freeze, ["~> 1.3"])
    s.add_runtime_dependency(%q<interactive_editor>.freeze, ["~> 0.0", ">= 0.0.12"])
    s.add_runtime_dependency(%q<coderay>.freeze, ["~> 1.1"])
    s.add_runtime_dependency(%q<debugging>.freeze, ["~> 2.1"])
    s.add_runtime_dependency(%q<looksee>.freeze, ["~> 5.0"])
    s.add_runtime_dependency(%q<object_shadow>.freeze, ["~> 1.1"])
    s.add_runtime_dependency(%q<code>.freeze, [">= 0.9.4", "< 2.0"])
    s.add_runtime_dependency(%q<core_docs>.freeze, ["~> 0.9.9"])
    s.add_runtime_dependency(%q<methodfinder>.freeze, ["~> 2.2", ">= 2.2.5"])
    s.add_runtime_dependency(%q<ruby_version>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<ruby_engine>.freeze, ["~> 2.0"])
    s.add_runtime_dependency(%q<os>.freeze, ["~> 1.1", ">= 1.1.4"])
  else
    s.add_dependency(%q<irb>.freeze, ["~> 1.6.2"])
    s.add_dependency(%q<every_day_irb>.freeze, ["~> 2.2"])
    s.add_dependency(%q<fancy_irb>.freeze, ["~> 1.2", ">= 1.2.1"])
    s.add_dependency(%q<wirb>.freeze, ["~> 2.0", ">= 2.2.1"])
    s.add_dependency(%q<hirb>.freeze, ["~> 0.7", ">= 0.7.3"])
    s.add_dependency(%q<paint>.freeze, [">= 0.9", "< 3.0"])
    s.add_dependency(%q<clipboard>.freeze, ["~> 1.3"])
    s.add_dependency(%q<interactive_editor>.freeze, ["~> 0.0", ">= 0.0.12"])
    s.add_dependency(%q<coderay>.freeze, ["~> 1.1"])
    s.add_dependency(%q<debugging>.freeze, ["~> 2.1"])
    s.add_dependency(%q<looksee>.freeze, ["~> 5.0"])
    s.add_dependency(%q<object_shadow>.freeze, ["~> 1.1"])
    s.add_dependency(%q<code>.freeze, [">= 0.9.4", "< 2.0"])
    s.add_dependency(%q<core_docs>.freeze, ["~> 0.9.9"])
    s.add_dependency(%q<methodfinder>.freeze, ["~> 2.2", ">= 2.2.5"])
    s.add_dependency(%q<ruby_version>.freeze, ["~> 1.0"])
    s.add_dependency(%q<ruby_engine>.freeze, ["~> 2.0"])
    s.add_dependency(%q<os>.freeze, ["~> 1.1", ">= 1.1.4"])
  end
end
