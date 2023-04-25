initializer = lambda do |name|
  require(name) unless defined?(Ripl)
end
runner = lambda do |binding, options|
  Ripl.start options.merge(binding: binding)
end
BindingRepl['ripl'] = [initializer, runner]
