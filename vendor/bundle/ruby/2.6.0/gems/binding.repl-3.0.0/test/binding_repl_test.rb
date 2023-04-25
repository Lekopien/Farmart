require_relative "setup"
class BindingReplTest < Minitest::Test
  def setup
    @before = BindingRepl.auto.dup
  end

  def teardown
    BindingRepl.auto = @before
  end

  def test_default_return_value_of_auto
    assert_equal BindingRepl::DEFAULT_AUTO, BindingRepl.auto
  end

  def test_set_of_new_auto
    BindingRepl.auto = ['a', 'b']
    assert_equal ['a', 'b'], BindingRepl.auto
  end

  def test_set_of_nil_on_auto
    BindingRepl.auto = nil
    assert_equal BindingRepl::DEFAULT_AUTO, BindingRepl.auto
  end
end
