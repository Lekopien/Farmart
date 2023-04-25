# -*- encoding: utf-8 -*-
# stub: irbtools 3.0.5 ruby lib

Gem::Specification.new do |s|
  s.name = "irbtools".freeze
  s.version = "3.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jan Lelis".freeze]
  s.date = "2021-05-25"
  s.description = "The Irbtools make working with Ruby's IRB console more fun & productive.".freeze
  s.email = ["hi@ruby.consulting".freeze]
  s.extra_rdoc_files = ["README.md".freeze, "CONFIGURE.md".freeze, "CHANGELOG.md".freeze, "MIT-LICENSE.txt".freeze]
  s.files = ["CHANGELOG.md".freeze, "CONFIGURE.md".freeze, "MIT-LICENSE.txt".freeze, "README.md".freeze]
  s.homepage = "https://irb.tools".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new([">= 2.0".freeze, "< 4.0".freeze])
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Irbtools happy IRB.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<irb>.freeze, [">= 0.9.6"])
      s.add_runtime_dependency(%q<every_day_irb>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<fancy_irb>.freeze, ["~> 1.2", ">= 1.2.1"])
      s.add_runtime_dependency(%q<wirb>.freeze, ["~> 2.0", ">= 2.2.1"])
      s.add_runtime_dependency(%q<hirb>.freeze, ["~> 0.7", ">= 0.7.3"])
      s.add_runtime_dependency(%q<binding.repl>.freeze, ["~> 3.0"])
      s.add_runtime_dependency(%q<paint>.freeze, [">= 0.9", "< 3.0"])
      s.add_runtime_dependency(%q<clipboard>.freeze, ["~> 1.3"])
      s.add_runtime_dependency(%q<interactive_editor>.freeze, ["~> 0.0", ">= 0.0.10"])
      s.add_runtime_dependency(%q<coderay>.freeze, ["~> 1.1"])
      s.add_runtime_dependency(%q<debugging>.freeze, ["~> 1.1"])
      s.add_runtime_dependency(%q<object_shadow>.freeze, ["~> 1.1"])
      s.add_runtime_dependency(%q<code>.freeze, [">= 0.9.2", "< 2.0"])
      s.add_runtime_dependency(%q<ori>.freeze, ["~> 0.1.0"])
      s.add_runtime_dependency(%q<methodfinder>.freeze, ["~> 2.2", ">= 2.2.2"])
      s.add_runtime_dependency(%q<ruby_version>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<ruby_engine>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<ruby_info>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<os>.freeze, [">= 0"])
    else
      s.add_dependency(%q<irb>.freeze, [">= 0.9.6"])
      s.add_dependency(%q<every_day_irb>.freeze, ["~> 2.0"])
      s.add_dependency(%q<fancy_irb>.freeze, ["~> 1.2", ">= 1.2.1"])
      s.add_dependency(%q<wirb>.freeze, ["~> 2.0", ">= 2.2.1"])
      s.add_dependency(%q<hirb>.freeze, ["~> 0.7", ">= 0.7.3"])
      s.add_dependency(%q<binding.repl>.freeze, ["~> 3.0"])
      s.add_dependency(%q<paint>.freeze, [">= 0.9", "< 3.0"])
      s.add_dependency(%q<clipboard>.freeze, ["~> 1.3"])
      s.add_dependency(%q<interactive_editor>.freeze, ["~> 0.0", ">= 0.0.10"])
      s.add_dependency(%q<coderay>.freeze, ["~> 1.1"])
      s.add_dependency(%q<debugging>.freeze, ["~> 1.1"])
      s.add_dependency(%q<object_shadow>.freeze, ["~> 1.1"])
      s.add_dependency(%q<code>.freeze, [">= 0.9.2", "< 2.0"])
      s.add_dependency(%q<ori>.freeze, ["~> 0.1.0"])
      s.add_dependency(%q<methodfinder>.freeze, ["~> 2.2", ">= 2.2.2"])
      s.add_dependency(%q<ruby_version>.freeze, ["~> 1.0"])
      s.add_dependency(%q<ruby_engine>.freeze, ["~> 1.0"])
      s.add_dependency(%q<ruby_info>.freeze, ["~> 1.0"])
      s.add_dependency(%q<os>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<irb>.freeze, [">= 0.9.6"])
    s.add_dependency(%q<every_day_irb>.freeze, ["~> 2.0"])
    s.add_dependency(%q<fancy_irb>.freeze, ["~> 1.2", ">= 1.2.1"])
    s.add_dependency(%q<wirb>.freeze, ["~> 2.0", ">= 2.2.1"])
    s.add_dependency(%q<hirb>.freeze, ["~> 0.7", ">= 0.7.3"])
    s.add_dependency(%q<binding.repl>.freeze, ["~> 3.0"])
    s.add_dependency(%q<paint>.freeze, [">= 0.9", "< 3.0"])
    s.add_dependency(%q<clipboard>.freeze, ["~> 1.3"])
    s.add_dependency(%q<interactive_editor>.freeze, ["~> 0.0", ">= 0.0.10"])
    s.add_dependency(%q<coderay>.freeze, ["~> 1.1"])
    s.add_dependency(%q<debugging>.freeze, ["~> 1.1"])
    s.add_dependency(%q<object_shadow>.freeze, ["~> 1.1"])
    s.add_dependency(%q<code>.freeze, [">= 0.9.2", "< 2.0"])
    s.add_dependency(%q<ori>.freeze, ["~> 0.1.0"])
    s.add_dependency(%q<methodfinder>.freeze, ["~> 2.2", ">= 2.2.2"])
    s.add_dependency(%q<ruby_version>.freeze, ["~> 1.0"])
    s.add_dependency(%q<ruby_engine>.freeze, ["~> 1.0"])
    s.add_dependency(%q<ruby_info>.freeze, ["~> 1.0"])
    s.add_dependency(%q<os>.freeze, [">= 0"])
  end
end
