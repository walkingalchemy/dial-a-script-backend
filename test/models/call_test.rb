require 'test_helper'

class CallTest < ActiveSupport::TestCase
  test "should not save without duration" do
    call = Call.new()
    assert_not call.save, "Call saved without duration"
  end

  test "should not save without user" do
    call = Call.new(duration: 120)
    assert_not call.save, "Call saved without user"
  end

  test "should not save without phone" do
    user = User.create(name: "Test User")
    call = Call.new(duration: 120, user: user)
    assert_not call.save, "Call saved without phone"
  end
end
