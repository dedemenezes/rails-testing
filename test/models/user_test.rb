require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "#full_name returns capitalized first name and last name" do
    user = User.new(first_name: 'seb', last_name: 'saunier')
    assert_equal 'Seb Saunier', user.full_name
  end
end
