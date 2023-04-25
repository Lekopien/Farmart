# -*- encoding: utf-8 -*-
# stub: clipboard 1.3.6 ruby lib

Gem::Specification.new do |s|
  s.name = "clipboard".freeze
  s.version = "1.3.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jan Lelis".freeze]
  s.date = "2021-07-25"
  s.description = "Access to the clipboard on Linux, MacOS, Windows, and Cygwin: Clipboard.copy, Clipboard.paste, Clipboard.clear".freeze
  s.email = ["hi@ruby.consulting".freeze]
  s.homepage = "https://github.com/janlelis/clipboard".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.requirements = ["Linux: You need xclip or xsel. On debian/ubuntu run: sudo apt-get install xsel".freeze, "Windows: You need the ffi gem".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Access to the clipboard on Linux, MacOS, Windows, and Cygwin.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3"])
    else
      s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3"])
    end
  else
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3"])
  end
end
