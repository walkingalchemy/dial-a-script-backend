require 'test_helper'

class PhoneTest < ActiveSupport::TestCase
  test "should not save without digits" do
    phone = Phone.new
    assert_not phone.save, "Phone saved without digits"
  end

  test "should not save without office" do
    phone = Phone.new(digits: "+1-000-000-0000")
    assert_not phone.save, "Phone saved without office"
  end
end
