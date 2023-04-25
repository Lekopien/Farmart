require_relative "setup"
class BindingReplRiplTest < Minitest::Test
  include BindingRepl::Mock
  def test_ripl
    expect(Ripl).to receive(:start).with({binding: instance_of(Binding)})
    binding.repl.ripl
  end

  def test_ripl_with_options
    expect(Ripl).to receive(:start).with({binding: instance_of(Binding), riplrc: false})
    binding.repl.ripl riplrc: false
  end
end
