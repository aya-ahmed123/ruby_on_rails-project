require 'test_helper'

class LectsControllerTest < ActionController::TestCase
  setup do
    @lect = lects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lect" do
    assert_difference('Lect.count') do
      post :create, lect: { attach: @lect.attach, content: @lect.content, course_id: @lect.course_id, title: @lect.title, user_id: @lect.user_id }
    end

    assert_redirected_to lect_path(assigns(:lect))
  end

  test "should show lect" do
    get :show, id: @lect
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lect
    assert_response :success
  end

  test "should update lect" do
    patch :update, id: @lect, lect: { attach: @lect.attach, content: @lect.content, course_id: @lect.course_id, title: @lect.title, user_id: @lect.user_id }
    assert_redirected_to lect_path(assigns(:lect))
  end

  test "should destroy lect" do
    assert_difference('Lect.count', -1) do
      delete :destroy, id: @lect
    end

    assert_redirected_to lects_path
  end
end
