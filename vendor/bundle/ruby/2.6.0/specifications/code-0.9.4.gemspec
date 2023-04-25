# -*- encoding: utf-8 -*-
# stub: code 0.9.4 ruby lib

Gem::Specification.new do |s|
  s.name = "code".freeze
  s.version = "0.9.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "rubygems_mfa_required" => "true" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jan Lelis".freeze]
  s.date = "2022-12-29"
  s.description = "Displays a method's code (from source or docs). Supports native C source when core_docs gem is available".freeze
  s.email = ["hi@ruby.consulting".freeze]
  s.homepage = "https://github.com/janlelis/code".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new([">= 2.0".freeze, "< 4.0".freeze])
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Displays a method's code.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<method_source>.freeze, [">= 0.9", "< 2.0"])
      s.add_runtime_dependency(%q<coderay>.freeze, ["~> 1.1"])
    else
      s.add_dependency(%q<method_source>.freeze, [">= 0.9", "< 2.0"])
      s.add_dependency(%q<coderay>.freeze, ["~> 1.1"])
    end
  else
    s.add_dependency(%q<method_source>.freeze, [">= 0.9", "< 2.0"])
    s.add_dependency(%q<coderay>.freeze, ["~> 1.1"])
  end
end
