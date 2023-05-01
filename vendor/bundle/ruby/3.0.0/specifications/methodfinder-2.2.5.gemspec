# -*- encoding: utf-8 -*-
# stub: methodfinder 2.2.5 ruby lib

Gem::Specification.new do |s|
  s.name = "methodfinder".freeze
  s.version = "2.2.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://todo.sr.ht/~citizen428/methodfinder", "mailing_list_uri" => "https://lists.sr.ht/~citizen428/public-inbox", "source_code_uri" => "https://git.sr.ht/~citizen428/methodfinder/tree", "wiki_uri" => "https://man.sr.ht/~citizen428/MethodFinder/" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Michael Kohl".freeze]
  s.date = "2022-07-19"
  s.description = "A Smalltalk-like Method Finder for Ruby with some extra features".freeze
  s.email = ["citizen428@gmail.com".freeze]
  s.homepage = "https://sr.ht/~citizen428/methodfinder/".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.6".freeze)
  s.rubygems_version = "3.2.32".freeze
  s.summary = "A Smalltalk-like Method Finder for Ruby".freeze

  s.installed_by_version = "3.2.32" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 2.3"])
    s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_development_dependency(%q<rdoc>.freeze, ["~> 6.3"])
    s.add_development_dependency(%q<rubocop>.freeze, ["~> 1.22"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 2.3"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 6.3"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 1.22"])
  end
end
