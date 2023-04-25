require_relative "setup"
class BindingTest < Minitest::Test
  include BindingRepl::Mock
  def test_return_value_of_repl
    assert_instance_of BindingRepl, binding.repl
  end

  def test_delegate_to_auto
    expect_any_instance_of(BindingRepl).to receive(:auto)
    binding.repl!
  end
end
