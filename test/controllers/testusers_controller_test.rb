require 'test_helper'

class TestusersControllerTest < ActionController::TestCase
  setup do
    @testuser = testusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testuser" do
    assert_difference('Testuser.count') do
      post :create, testuser: { email: @testuser.email, name: @testuser.name, password: @testuser.password }
    end

    assert_redirected_to testuser_path(assigns(:testuser))
  end

  test "should show testuser" do
    get :show, id: @testuser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testuser
    assert_response :success
  end

  test "should update testuser" do
    patch :update, id: @testuser, testuser: { email: @testuser.email, name: @testuser.name, password: @testuser.password }
    assert_redirected_to testuser_path(assigns(:testuser))
  end

  test "should destroy testuser" do
    assert_difference('Testuser.count', -1) do
      delete :destroy, id: @testuser
    end

    assert_redirected_to testusers_path
  end
end
