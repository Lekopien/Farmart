require_relative 'setup'
class BindingReplIrbTest < Minitest::Test
  include BindingRepl::Mock
  def test_irb
    expect_any_instance_of(IRB::Irb).to receive(:eval_input)
    binding.repl.irb
  end

  def test_irb_set_custom_option
    irbrc = IRB.conf[:IRB_RC]
    expect_any_instance_of(IRB::Irb).to receive(:eval_input)
    binding.repl.irb IRB_RC: '/home/nobody/.irbrc'
    assert_equal '/home/nobody/.irbrc', IRB.conf[:IRB_RC]
    IRB.conf[:IRB_RC] = irbrc
  end
end
