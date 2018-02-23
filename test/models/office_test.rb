require 'test_helper'

class OfficeTest < ActiveSupport::TestCase
  test "should not save without title" do
    office = Office.new()
    assert_not office.save, "Office saved without title"
  end

  test "should not save without organization" do
    office = Office.new(title: "Test")
    assert_not office.save, "Office saved without organization"
  end


end
