# -*- encoding: utf-8 -*-
# stub: interactive_editor 0.0.12 ruby lib

Gem::Specification.new do |s|
  s.name = "interactive_editor".freeze
  s.version = "0.0.12"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jan Berkel".freeze]
  s.date = "2023-01-02"
  s.description = "Use vim (or any other text editor) from inside irb to quickly test & write new code.".freeze
  s.email = "jan.berkel@gmail.com".freeze
  s.extra_rdoc_files = ["README.md".freeze, "LICENSE".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze]
  s.homepage = "http://github.com/jberkel/interactive_editor".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "3.2.32".freeze
  s.summary = "Interactive editing in irb.".freeze

  s.installed_by_version = "3.2.32" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 2
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<spoon>.freeze, ["~> 0.0.6"])
  else
    s.add_dependency(%q<spoon>.freeze, ["~> 0.0.6"])
  end
end
