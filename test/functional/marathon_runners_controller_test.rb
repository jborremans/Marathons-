require 'test_helper'

class MarathonRunnersControllerTest < ActionController::TestCase
  setup do
    @marathon_runner = marathon_runners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:marathon_runners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create marathon_runner" do
    assert_difference('MarathonRunner.count') do
      post :create, marathon_runner: { marathon_id: @marathon_runner.marathon_id, runners_id: @marathon_runner.runners_id }
    end

    assert_redirected_to marathon_runner_path(assigns(:marathon_runner))
  end

  test "should show marathon_runner" do
    get :show, id: @marathon_runner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @marathon_runner
    assert_response :success
  end

  test "should update marathon_runner" do
    put :update, id: @marathon_runner, marathon_runner: { marathon_id: @marathon_runner.marathon_id, runners_id: @marathon_runner.runners_id }
    assert_redirected_to marathon_runner_path(assigns(:marathon_runner))
  end

  test "should destroy marathon_runner" do
    assert_difference('MarathonRunner.count', -1) do
      delete :destroy, id: @marathon_runner
    end

    assert_redirected_to marathon_runners_path
  end
end
