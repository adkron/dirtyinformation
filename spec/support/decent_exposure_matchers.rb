RSpec::Matchers.define :expose do |expected|
  match do |actual_controller|
    actual_controller.respond_to?(expected.to_sym) and
      actual_controller.hidden_actions.include?(expected.to_s) and
      actual_controller._helper_methods.include?(expected.to_sym)
  end

  failure_message_for_should do |actual_controller|
    "expected %s to expose a method named %s" % [actual_controller.class.name, expected.to_s]
  end

  description do
    "expose the method %p" % expected
  end
end