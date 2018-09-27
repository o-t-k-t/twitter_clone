require 'test_helper'

class TweetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tweets_index_url
    assert_response :success
  end

  test "should get new" do
    get tweets_new_url
    assert_response :success
  end

  test "should get post" do
    get tweets_post_url
    assert_response :success
  end

  test "should get edit" do
    get tweets_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get tweets_destroy_url
    assert_response :success
  end

end
