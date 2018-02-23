require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save without name" do
    user = User.new
    assert_not user.save
  end

  test "should not save without a unique name" do
    User.create(name: "UniquenessTester")
    user = User.new(name: "UniquenessTester")
    assert_not user.save
  end
end
