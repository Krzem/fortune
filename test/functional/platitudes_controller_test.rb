require 'test_helper'

class PlatitudesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:platitudes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create platitude" do
    assert_difference('Platitude.count') do
      post :create, :platitude => { }
    end

    assert_redirected_to platitude_path(assigns(:platitude))
  end

  test "should show platitude" do
    get :show, :id => platitudes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => platitudes(:one).to_param
    assert_response :success
  end

  test "should update platitude" do
    put :update, :id => platitudes(:one).to_param, :platitude => { }
    assert_redirected_to platitude_path(assigns(:platitude))
  end

  test "should destroy platitude" do
    assert_difference('Platitude.count', -1) do
      delete :destroy, :id => platitudes(:one).to_param
    end

    assert_redirected_to platitudes_path
  end
end
