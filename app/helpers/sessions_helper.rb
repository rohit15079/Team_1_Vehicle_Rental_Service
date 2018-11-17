module SessionsHelper

  def sign_in(agent)
    remember_token = Agent.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    agent.update_attribute(:remember_token, Agent.digest(remember_token))
    self.current_agent = agent
  end

  def signed_in?
    !current_agent.nil?
  end

  def current_agent=(agent)
    @current_agent = agent
  end

  def current_agent
    remember_token = Agent.digest(cookies[:remember_token])
    @current_agent ||= Agent.find_by(remember_token: remember_token)
  end

  def sign_out
    current_agent.update_attribute(:remember_token,
                                  Agent.digest(Agent.new_remember_token))
    cookies.delete(:remember_token)
    self.current_agent = nil
  end
end
