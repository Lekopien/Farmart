require_relative 'setup'
class BindingReplRibTest < Minitest::Test
  include BindingRepl::Mock
  def test_rib
    expect(Rib).to receive(:anchor).with(instance_of(Binding), {})
    binding.repl.rib
  end

  def test_rib_with_options
    expect(Rib).to receive(:anchor).with(instance_of(Binding), {prompt: ">>"})
    binding.repl.rib prompt: ">>"
  end
end
