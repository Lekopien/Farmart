initializer = lambda do |name|
  unless defined?(Rib)
    require 'rib'
    require 'rib/more/anchor'
  end
end
runner = lambda do |binding, options|
  Rib.anchor(binding, options)
end
BindingRepl['rib'] = [initializer, runner]

