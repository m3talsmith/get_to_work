require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  should "be valid with factory" do
    assert_valid Factory.build(:person)
  end
end
