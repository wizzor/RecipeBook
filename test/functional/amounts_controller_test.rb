require 'test_helper'

class AmountsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:amounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create amount" do
    assert_difference('Amount.count') do
      post :create, :amount => { }
    end

    assert_redirected_to amount_path(assigns(:amount))
  end

  test "should show amount" do
    get :show, :id => amounts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => amounts(:one).to_param
    assert_response :success
  end

  test "should update amount" do
    put :update, :id => amounts(:one).to_param, :amount => { }
    assert_redirected_to amount_path(assigns(:amount))
  end

  test "should destroy amount" do
    assert_difference('Amount.count', -1) do
      delete :destroy, :id => amounts(:one).to_param
    end

    assert_redirected_to amounts_path
  end
end
