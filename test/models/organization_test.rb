require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  test "should not save without a name" do
    org = Organization.new
    assert_not org.save, "Organization saved without a name"
  end
end
