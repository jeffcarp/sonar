require 'test_helper'

class LedesControllerTest < ActionController::TestCase
  setup do
    @lede = ledes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ledes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lede" do
    assert_difference('Lede.count') do
      post :create, lede: { article_id: @lede.article_id, position: @lede.position, special: @lede.special }
    end

    assert_redirected_to lede_path(assigns(:lede))
  end

  test "should show lede" do
    get :show, id: @lede
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lede
    assert_response :success
  end

  test "should update lede" do
    put :update, id: @lede, lede: { article_id: @lede.article_id, position: @lede.position, special: @lede.special }
    assert_redirected_to lede_path(assigns(:lede))
  end

  test "should destroy lede" do
    assert_difference('Lede.count', -1) do
      delete :destroy, id: @lede
    end

    assert_redirected_to ledes_path
  end
end
