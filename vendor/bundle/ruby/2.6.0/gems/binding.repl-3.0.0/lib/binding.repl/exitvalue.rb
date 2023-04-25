class BindingRepl::ExitValue
  MAP = {
    :disabled => :'binding.repl.disabled'
  }

  #
  #  @return [BindingRepl::ExitValue]
  #    returns a disabled exit value.
  #
  def self.disabled
    new(MAP[:disabled])
  end

  #
  # @param [BasicObject, Object] an object
  #   an object who has been returned by a repl.
  #
  # @return [BindingRepl::ExitValue] 
  #   returns an instance of {BindingRepl::ExitValue}.
  #
  def initialize(object)
    @object = object
  end

  #
  # @return [Object, BasicObject]
  #   returns the object returned as an exit value by a repl.
  #
  def object
    @object
  end

  #
  #  @return [Boolean]
  #    returns a true value if the exit value is returned while binding.repl is disabled.
  #
  def disabled?
    MAP[:disabled].equal?(@object)
  end
end
