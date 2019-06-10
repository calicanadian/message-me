class SessionsController < ApplicationController
  # before_action :set_session, only: [:show, :edit, :update, :destroy]

  # GET /sessions
  # GET /sessions.json
  def index
    @sessions = Session.all
  end

  # GET /sessions/1
  # GET /sessions/1.json
  def show
  end

  # GET /sessions/new
  def new

  end

  # GET /sessions/1/edit
  def edit
  end

  # POST /sessions
  # POST /sessions.json
  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      # good scenario
      session[:user_id] = user.id
      flash[:success] = "You have successfully logged in"
      redirect_to root_path
    else
      # bad scenario
      flash.now[:error] = "There was something wrong with your log in information"
      render 'new'
    end
  end

  # PATCH/PUT /sessions/1
  # PATCH/PUT /sessions/1.json
  # def update
  #   respond_to do |format|
  #     if @session.update(session_params)
  #       format.html { redirect_to @session, notice: 'Session was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @session }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @session.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    session[:user_id] = nil
    flash[:success] = "You have successfully logged out"
    redirect_to login_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session
      @session = Session.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def session_params
      params.fetch(:session, {})
    end
end
