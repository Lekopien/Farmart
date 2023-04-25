class BindingRepl
  DEFAULT_AUTO = ['pry', 'irb', 'ripl', 'rib', 'ir']

  #
  # @param [String] name
  #   the name of a repl, callable through `binding.repl.<name>`.
  #
  # @param [Array<Proc, Proc>] valuep
  #   a Proc pair that defines an initializer and a runner for a repl.
  #
  # @raise
  #   (see BindingRepl#start)
  #
  def self.[]=(name, valuep)
    define_method(name) do |options = {}|
      start(name.to_s, @binding, valuep, options)
    end
  end

  #
  #  @return [Array<String>]
  #    returns an array of repl names.
  #
  def self.auto
    @auto ||= DEFAULT_AUTO
  end

  #
  #  @param [Array<String>] list
  #    defines a new order for the {#auto} method.
  #
  #  @return [Array<String>]
  #    returns the argument.
  #
  def self.auto=(list)
    @auto = list
  end

  #
  # returns true when binding.repl is disabled.
  #
  # @return [Boolean]
  #
  def self.disabled?
    @disabled
  end

  #
  # enable binding.repl (enabled by default)
  #
  # @return [true]
  #
  def self.enable!
    @disabled = false
    !@disabled
  end

  #
  # disable binding.repl
  # future calls to `binding.repl.{auto,fry,rib,pry,ripl}` become a no-op.
  #
  # @return [true]
  #
  def self.disable!
    @disabled = true
  end

  #
  #  @param [Binding] binding
  #    a Binding object.
  #
  #  @return [BindingRepl]
  #    returns an instance of BindingRepl.
  #
  def initialize(binding)
    @binding = binding
    @auto = BindingRepl.auto.dup
  end

  #
  # discovers and starts the first available repl.
  #
  # @raise [LoadError]
  #   when no repl can be loaded.
  #
  # @return [BindingRepl::ExitValue]
  #   returns an instance of {BindingRepl::ExitValue}.
  #
  def auto
    @auto.each do |repl_name|
      begin
        return public_send(repl_name, {})
      rescue LoadError, NoMethodError
      end
    end
    raise LoadError, 'failed to require a repl'
  end

  #
  #  @return [Boolean]
  #    returns true when BindingRepl is disabled.
  #
  def disabled?
    BindingRepl.disabled?
  end

private
  #
  # @param [String] name
  #   the name of a repl.
  #
  # @param [Binding] binding
  #   a Binding object.
  #
  # @param [Array<Proc, Proc>] valuep
  #   a value pair (initializer and a runner)
  #
  # @param [Hash] options
  #   options Hash that are forwarded to the repl.
  #
  def start(name, binding, valuep, options)
    if disabled?
      return BindingRepl::ExitValue.disabled
    end
    init, runner = valuep[0..1]
    init.call(name)
    BindingRepl::ExitValue.new runner.call(binding, options)
  rescue LoadError => e
    raise e, "failed to require '#{name}' repl"
  end
end

require_relative 'binding.repl/version'
require_relative 'binding.repl/exitvalue'
require_relative 'binding.repl/mpatch/binding'
require_relative 'binding.repl/repls/irb'
require_relative 'binding.repl/repls/ripl'
require_relative 'binding.repl/repls/rib'
require_relative 'binding.repl/repls/pry'
require_relative 'binding.repl/repls/ir'
