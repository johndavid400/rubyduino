require 'test_helper'

class ArduinosControllerTest < ActionController::TestCase
  setup do
    @arduino = arduinos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arduinos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arduino" do
    assert_difference('Arduino.count') do
      post :create, :arduino => @arduino.attributes
    end

    assert_redirected_to arduino_path(assigns(:arduino))
  end

  test "should show arduino" do
    get :show, :id => @arduino.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @arduino.to_param
    assert_response :success
  end

  test "should update arduino" do
    put :update, :id => @arduino.to_param, :arduino => @arduino.attributes
    assert_redirected_to arduino_path(assigns(:arduino))
  end

  test "should destroy arduino" do
    assert_difference('Arduino.count', -1) do
      delete :destroy, :id => @arduino.to_param
    end

    assert_redirected_to arduinos_path
  end
end
