require "test_helper"

class CreateArticleTest < ActionDispatch::IntegrationTest

  setup do
    @user = User.create(username: "johndoe", email: "johndoe@example.com", password: "password", admin: false)
    sign_in_as(@user)
  end

  test "get new article form and create article" do
    get "/articles/new"
    assert_response :success
    assert_difference 'Article.count', 1 do
      post articles_path, params:{ article: { name: "any article", description: "any article description to allow validation" } }
      assert_response :redirect
    end
    follow_redirect!
    assert_response :success
    assert_match "test article", response.body
  end
end
