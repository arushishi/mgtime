class MUsersController < ApplicationController
  def index
    @m_users = MUser.all
  end

  def show
    @m_user = MUser.find(params[:id])
  end

  def new
    @m_user = MUser.new
  end

  def create
    @m_user = MUser.new(user_params)
    if @m_user.save
      sign_in @m_user
      flash[:success] = "mgTime!!!!!"
      redirect_to @m_user
    else
      render 'new'
    end
  end

  def destroy
    set_m_user
    @m_card.destroy
    respond_to do |format|
      format.html { redirect_to m_users_url }
      format.json { head :no_content }
    end
  end

  private
    def set_m_user
      @m_card = MUser.find(params[:id])
    end

    def user_params
      params.require(:m_user).permit(:user_name, :password,
                                   :password_confirmation)
    end
end
