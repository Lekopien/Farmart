# -*- encoding: utf-8 -*-
# stub: every_day_irb 2.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "every_day_irb".freeze
  s.version = "2.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "rubygems_mfa_required" => "true" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jan Lelis".freeze]
  s.date = "2022-12-27"
  s.description = "EveryDayIrb simplifies daily life in IRB with commands like: ls, cat, rq, rrq, ld, reset!, ...".freeze
  s.email = ["hi@ruby.consulting".freeze]
  s.homepage = "https://irb.tools".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new([">= 2.0".freeze, "< 4.0".freeze])
  s.rubygems_version = "3.0.3".freeze
  s.summary = "EveryDayIrb simplifies daily life in IRB.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<cd>.freeze, ["~> 1.0"])
    else
      s.add_dependency(%q<cd>.freeze, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<cd>.freeze, ["~> 1.0"])
  end
end
