require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers

  setup do
    sign_in users(:one)
  end

  context "#create" do
    should "save a new article" do
      assert_difference('Article.count') do
        post :create, article: { body: 'New Article' }
      end

      assert_redirected_to articles_path
    end
  end
end
