initializer = lambda do |name|
  require(name) unless defined?(Ir)
end
runner = lambda do |binding, options|
  Ir::Tty.new options.merge(binding: binding)
end
BindingRepl['ir'] = [initializer, runner]
