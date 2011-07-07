class SessionsController < ApplicationController
  def new
  end

  def create
		if agent = Agent.authenticate(params[:name], params[:password])
			session[:agent_id] = agent.id
			redirect_to dashboard_url
		else
			redirect_to login_url, :alert => "Invalid user/password combination"
		end
  end

  def destroy
		session[:agent_id] = nil
		redirect_to login_url, :notice => "Logged out"
  end

end
