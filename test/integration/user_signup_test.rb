require "test_helper"

class UserSignupTest < ActionDispatch::IntegrationTest

  test "get form and input credentials test" do
    get "/signup"
    assert_difference 'User.count', 1 do
      post users_path, params:{ user: { username: "John Doe", email: "jonhdoe@example.com", password: "password" } }
      follow_redirect!
    end
    assert_match "John Doe", response.body
  end
end
