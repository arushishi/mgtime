class StaticPagesController < ApplicationController

  def new
  end

  def create
    m_user = MUser.find_by(user_name: params[:session][:user_name].downcase)
    if m_user && m_user.authenticate(params[:session][:password_digest])
      sign_in m_user
      redirect_to m_user
    else
      flash.now[:error] = 'パスワードが一致しません'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
