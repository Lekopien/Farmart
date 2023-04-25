require_relative 'setup'
class BindingReplAutoTest < Minitest::Test
  include BindingRepl::Mock
  def setup
    super
    BindingRepl.auto = nil
  end

  def teardown
    super
    BindingRepl.auto = nil
  end

  def test_ripl_as_second_match
    BindingRepl.auto = ['example', 'ripl']
    expect(Ripl).to receive(:start).with(binding: instance_of(Binding))
    binding.repl.auto
  end

  def test_no_match
    BindingRepl.auto = ['ry', 'bu']
    assert_raises(LoadError) { binding.repl.auto }
  end

  def test_empty
    BindingRepl.auto = []
    assert_raises(LoadError) { binding.repl.auto }
  end

  def test_disable
    BindingRepl.disable!
    assert_equal binding.repl.auto.disabled?, true
  ensure
    BindingRepl.enable!
  end

  def test_shortcut_method_repl!
    expect_any_instance_of(BindingRepl).to receive(:auto)
    binding.repl!
  end
end
