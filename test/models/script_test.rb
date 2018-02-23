require 'test_helper'

class ScriptTest < ActiveSupport::TestCase
  test "should not save without a title" do
    script = Script.new
    assert_not script.save, "Script saved without a title"
  end

  test "should not save with a non-unique title" do
    Script.create(title: "UniquenessTester")
    script = Script.new(title: "UniquenessTester")
    assert_not script.save, "Script saved with a non-unique title"
  end

  test "should not save without a body" do
    script = Script.new(title: "Tester")
    assert_not script.save, "Script saved without a body"
  end

  test "should not save without a description" do
    script = Script.new(title: "Tester", body: "This is a test")
    assert_not script.save, "Script saved without a description"
  end

  test "should not save without a user" do
    script = Script.create(title: "Tester", body: "This is a test", description: "Testing")
    assert_not script.save, "Script saved with a non-unique title"
  end
end
