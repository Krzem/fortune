require 'test_helper'

class EducationControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:education)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create education" do
    assert_difference('Education.count') do
      post :create, :education => { }
    end

    assert_redirected_to education_path(assigns(:education))
  end

  test "should show education" do
    get :show, :id => education(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => education(:one).to_param
    assert_response :success
  end

  test "should update education" do
    put :update, :id => education(:one).to_param, :education => { }
    assert_redirected_to education_path(assigns(:education))
  end

  test "should destroy education" do
    assert_difference('Education.count', -1) do
      delete :destroy, :id => education(:one).to_param
    end

    assert_redirected_to education_path
  end
end
