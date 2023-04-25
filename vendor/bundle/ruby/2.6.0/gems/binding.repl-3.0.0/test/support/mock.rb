module BindingRepl::Mock
  include RSpec::Mocks::ExampleMethods

  def setup
    RSpec::Mocks.setup
    super
  end

  def teardown
    RSpec::Mocks.verify
  ensure
    RSpec::Mocks.teardown
    super
  end
end
