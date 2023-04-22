require './lib/core_docs/version.rb'

Gem::Specification.new do |s|
  s.name = "core_docs"
  s.version = CoreDocs::VERSION

  s.authors = ["John Mair (banisterfiend)", "Jan Lelis (non-pry version)"]
  s.email = ["jrmair@gmail.com", "hi@ruby.consulting"]
  s.summary = 'Provides YARD and extended documentation support'
  s.description = <<DESCR
This gem enables you to be able to display the source code and the docs
of Ruby methods and classes implemented in C.
DESCR
  s.homepage = "https://github.com/janlelis/core_docs"
  s.license = 'MIT'

  s.require_paths = ["lib"]
  s.files = `git ls-files`.split("\n")

  s.required_ruby_version = ">= 2.0", "< 4.0"
  s.add_dependency 'yard', "~> 0.9.11"
  s.add_development_dependency 'latest_ruby', "~> 0.0"
  s.add_development_dependency 'bacon', "~> 1.1"
end
