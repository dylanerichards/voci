require 'test_helper'

class OneOnOnesControllerTest < ActionController::TestCase
  setup do
    @one_on_one = one_on_ones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:one_on_ones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create one_on_one" do
    assert_difference('OneOnOne.count') do
      post :create, one_on_one: { description: @one_on_one.description, student: @one_on_one.student, teacher: @one_on_one.teacher, time: @one_on_one.time, topic: @one_on_one.topic }
    end

    assert_redirected_to one_on_one_path(assigns(:one_on_one))
  end

  test "should show one_on_one" do
    get :show, id: @one_on_one
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @one_on_one
    assert_response :success
  end

  test "should update one_on_one" do
    patch :update, id: @one_on_one, one_on_one: { description: @one_on_one.description, student: @one_on_one.student, teacher: @one_on_one.teacher, time: @one_on_one.time, topic: @one_on_one.topic }
    assert_redirected_to one_on_one_path(assigns(:one_on_one))
  end

  test "should destroy one_on_one" do
    assert_difference('OneOnOne.count', -1) do
      delete :destroy, id: @one_on_one
    end

    assert_redirected_to one_on_ones_path
  end
end
