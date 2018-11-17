class SessionsController < ApplicationController
  def new
    if signed_in?
      agent = Agent.find_by(email: @current_agent.email)
      redirect_to edit_agent_url(@current_agent.id)
    end
  end

  def create
    agent = Agent.find_by(email: params[:session][:email].downcase)
    if agent && agent.authenticate(params[:session][:password])
      sign_in agent
      redirect_to edit_agent_url(@current_agent.id)
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
