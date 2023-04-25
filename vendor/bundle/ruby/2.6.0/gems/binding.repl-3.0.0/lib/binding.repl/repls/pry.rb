initializer = lambda do |name|
  require(name) unless defined?(Pry)
end
runner = lambda do |binding, options|
  Pry.start(binding, options)
end
BindingRepl['pry'] = [initializer, runner]
