$LOAD_PATH.push 'lib'
Kernel.require 'binding.repl/version'
Gem::Specification.new do |spec|
  spec.name          = 'binding.repl'
  spec.version       = BindingRepl::VERSION
  spec.authors       = ['rpag']
  spec.email         = ['rpag@singletonclass.com']
  spec.summary       = '"binding.pry" for every ruby repl'
  spec.homepage      = 'https://github.com/rpag/binding.repl'
  spec.files         = `git ls-files`.split($/)
  spec.license       = 'MIT'
end
