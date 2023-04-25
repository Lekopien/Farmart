initializer = lambda do |name|
  require(name) unless defined?(IRB)
  require_relative 'irb/irb'
  IRB.conf.merge!(BindingRepl::IRB::MAP)
end
runner = lambda do |binding, options|
  BindingRepl::IRB.new(binding, options).repl
end
BindingRepl['irb'] = [initializer, runner]

