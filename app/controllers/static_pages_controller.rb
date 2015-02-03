class StaticPagesController < ApplicationController
  def home
    @t_punchdata = TPunchdata.paginate(page: params[:page])
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
