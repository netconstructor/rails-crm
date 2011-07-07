require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

	test "should login" do
		dave = agents(:one)
		post :create, :name => dave.name, :password => 'sekrit'
		assert_redirected_to dashboard_url
		assert_equal dave.id, session[:agent_id]
	end

	test "should fail login" do
		dave = agents(:one)
		post :create, :name => dave.name, :password => 'wrong'
		assert_redirected_to login_url
	end

	test "should logout" do
	delete :destroy
	assert_redirected_to login_url
	end

end
