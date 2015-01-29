module SessionsHelper

  def sign_in(user)
    remember_token = MUser.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    m_user.update_attribute(:remember_token, MUser.encrypt(remember_token))
    self.current_user = m_user
  end

  def signed_in?
    !current_user.nil?
  end

  def current_user=(m_user)
    @current_user = m_user
  end

  def current_user
    remember_token = MUser.encrypt(cookies[:remember_token])
    @current_user ||= MUser.find_by(remember_token: remember_token)
  end

  def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
  end
end
