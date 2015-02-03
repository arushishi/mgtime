class MUsersController < ApplicationController
  before_action :set_m_user, only: [:show, :edit, :update, :destroy]

  # GET /m_users
  # GET /m_users.json
  def index
    @m_users = MUser.all
  end

  # GET /m_users/1
  # GET /m_users/1.json
  def show
  end

  # GET /m_users/new
  def new
    @m_user = MUser.new
  end

  # GET /m_users/1/edit
  def edit
  end

  # POST /m_users
  # POST /m_users.json
  def create
    @m_user = MUser.new(m_user_params)

    respond_to do |format|
      if @m_user.save
        format.html { redirect_to @m_user, notice: 'M user was successfully created.' }
        format.json { render action: 'show', status: :created, location: @m_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @m_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m_users/1
  # PATCH/PUT /m_users/1.json
  def update
    respond_to do |format|
      if @m_user.update(m_user_params)
        format.html { redirect_to @m_user, notice: 'M user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @m_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_users/1
  # DELETE /m_users/1.json
  def destroy
    @m_user.destroy
    respond_to do |format|
      format.html { redirect_to m_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m_user
      @m_user = MUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m_user_params
      params[:m_user]
    end
end
