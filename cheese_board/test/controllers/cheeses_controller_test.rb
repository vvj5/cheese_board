require 'test_helper'

class CheesesControllerTest < ActionController::TestCase
  setup do
    @cheese = cheeses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cheeses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cheese" do
    assert_difference('Cheese.count') do
      post :create, cheese: { User_id: @cheese.User_id, variety: @cheese.variety }
    end

    assert_redirected_to cheese_path(assigns(:cheese))
  end

  test "should show cheese" do
    get :show, id: @cheese
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cheese
    assert_response :success
  end

  test "should update cheese" do
    patch :update, id: @cheese, cheese: { User_id: @cheese.User_id, variety: @cheese.variety }
    assert_redirected_to cheese_path(assigns(:cheese))
  end

  test "should destroy cheese" do
    assert_difference('Cheese.count', -1) do
      delete :destroy, id: @cheese
    end

    assert_redirected_to cheeses_path
  end
end
