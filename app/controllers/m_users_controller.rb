class MUsersController < ApplicationController
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

  private

    def user_params
      params.require(:m_user).permit(:user_name, :password,
                                   :password_confirmation)
    end
end
