class AgentsController < ApplicationController
  before_action :set_agent, only: [:show, :edit, :update, :destroy]

  # GET /agents
  # GET /agents.json
  def index
    @agents = Agent.all
  end

  # GET /agents/1
  # GET /agents/1.json
  def show
    @agent = Agent.find(params[:id])
  end

  # GET /agents/new
  def new
    @agent = Agent.new
  end

  # GET /agents/1/edit
  def edit
  end

  # POST /agents
  # POST /agents.json=

  def create                                                  # To create a new agent account
    @agent = Agent.new(agent_params)
    if @agent.save
      sign_in @agent
      flash[:success] = "Welcome to the Sample App!"
      redirect_to edit_agent_path(@agent)
    else
      render 'new'
    end
  end

  # PATCH/PUT /agents/1
  # PATCH/PUT /agents/1.json
  def update                                                   # To Update agent info
    respond_to do |format|
      if @agent.update(agent_params.except(:password, :password_confirmation))
        format.html { redirect_to edit_agent_path(@agent), notice: 'Agent was successfully updated.' }
        format.json { render :edit, status: :ok, location: @agent }
      else
        format.html { render :edit }
        format.json { render json: @agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agents/1
  # DELETE /agents/1.json
  def destroy                                                 # To delete an agent account
    @agent.destroy
    respond_to do |format|
      format.html { redirect_to agents_url, notice: 'Agent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agent
      @agent = Agent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agent_params
      params.require(:agent).permit(:orgName, :regNo, :email, :fName, :lName, :locality, :city, :pinCode, :password, :password_confirmation)
    end
end
