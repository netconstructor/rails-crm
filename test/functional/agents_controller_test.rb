require 'test_helper'

class AgentsControllerTest < ActionController::TestCase
  setup do
    @input_attributes = {
			:name										=> "dave",
			:email									=> "dave@dave.dave",
			:password								=> "dave",
			:password_confirmation	=> "dave",
		}
    @agent = agents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agent" do
    assert_difference('Agent.count') do
      post :create, :agent => @input_attributes
    end

    assert_redirected_to agents_path
  end

  test "should show agent" do
    get :show, :id => @agent.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @agent.to_param
    assert_response :success
  end

  test "should update agent" do
    put :update, :id => @agent.to_param, :agent => @input_attributes
    assert_redirected_to agents_path
  end

  test "should destroy agent" do
    assert_difference('Agent.count', -1) do
      delete :destroy, :id => @agent.to_param
    end

    assert_redirected_to agents_path
  end
end
