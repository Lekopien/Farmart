class BindingRepl::IRB
  MAP = {
    IRB_NAME:        'irb'            ,
    MATH_MODE:        nil             ,
    INSPECT_MODE:     true            ,
    IRB_RC:           nil             ,
    BACK_TRACE_LIMIT: 17              ,
    USE_LOADER:       false           ,
    USE_TRACER:       false           ,
    IGNORE_SIGINT:    false           ,
    IGNORE_EOF:       false           ,
    DEBUG_LEVEL:      0               ,
    PROMPT_MODE:      :DEFAULT        ,
    LC_MESSAGES:      ''              ,
    PROMPT: { 
      :NULL => {
	:PROMPT_I => nil,
	:PROMPT_N => nil,
	:PROMPT_S => nil,
	:PROMPT_C => nil,
	:RETURN => "%s\n"
      },
      :DEFAULT => {
	:PROMPT_I => "%N(%m):%03n:%i> ",
	:PROMPT_N => "%N(%m):%03n:%i> ",
	:PROMPT_S => "%N(%m):%03n:%i%l ",
	:PROMPT_C => "%N(%m):%03n:%i* ",
	:RETURN => "=> %s\n"
      },
      :CLASSIC => {
	:PROMPT_I => "%N(%m):%03n:%i> ",
	:PROMPT_N => "%N(%m):%03n:%i> ",
	:PROMPT_S => "%N(%m):%03n:%i%l ",
	:PROMPT_C => "%N(%m):%03n:%i* ",
	:RETURN => "%s\n"
      },
      :SIMPLE => {
	:PROMPT_I => ">> ",
	:PROMPT_N => ">> ",
	:PROMPT_S => nil,
	:PROMPT_C => "?> ",
	:RETURN => "=> %s\n"
      },
      :INF_RUBY => {
	:PROMPT_I => "%N(%m):%03n:%i> ",
	:PROMPT_N => nil,
	:PROMPT_S => nil,
	:PROMPT_C => nil,
	:RETURN => "%s\n",
	:AUTO_INDENT => true
      },
      :XMP => {
	:PROMPT_I => nil,
	:PROMPT_N => nil,
	:PROMPT_S => nil,
	:PROMPT_C => nil,
	:RETURN => "    ==>%s\n"
      },
      :'binding.repl' => {
	:PROMPT_I => "% ",
	:PROMPT_N => "% ",
	:PROMPT_S => nil,
	:PROMPT_C => "?> ",
	:RETURN => "=> %s\n"
      },
    }
  }

  #
  #  @param 
  #    (see BindingRepl::IRB#initialize)
  #
  #  @return 
  #    (see BindingRepl::IRB#repl)
  #
  def self.start(binding, options = {})
    new(binding, options).repl
  end

  #
  # @param [Binding] binding
  #   a Binding object.
  #
  # @param [Hash] options
  #   a Hash of options.  
  #   see {BindingRepl::IRB::MAP} for a list of possibles.
  #
  def initialize(binding, options = {})
    @binding = binding
    @options = ::IRB.conf.merge!(options)
    @ws      = ::IRB::WorkSpace.new(@binding)
    @repl    = ::IRB::Irb.new(@ws)
  end

  #
  # read, eval, print, and loop.
  #
  # @return [BasicObject, Object]
  #   returns a repl exit value.
  #
  def repl
    setup
    signal_handle
    eval_input
  end

private
  def setup
    ::IRB.conf[:MAIN_CONTEXT] = @repl.context
  end

  def signal_handle
    trap(:SIGINT) { @repl.signal_handle }
  end

  def eval_input
    catch(:IRB_EXIT) { @repl.eval_input }
  end
end
