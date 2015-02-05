class StaticPagesController < ApplicationController
  def home
    @m_user = current_user
    if @m_user
      @t_punchdata = @m_user.t_punchdatum.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end

  def new
  end
end
