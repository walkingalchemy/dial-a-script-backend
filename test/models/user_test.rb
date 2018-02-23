require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save without name" do
    user = User.new
    assert_not user.save, "User saved without a name"
  end

  test "should not save with a non-unique name" do
    User.create(name: "UniquenessTester")
    user = User.new(name: "UniquenessTester")
    assert_not user.save, "User saved with a non-unique name"
  end
end
