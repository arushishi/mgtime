class StaticPagesController < ApplicationController
  def home
    @m_user = current_user
    if @m_user
   #   @t_punchdata = @m_user.t_punchdatum.paginate(page: params[:page])
      @t_punchdata = ActiveRecord::Base.connection.select(<<SQL)
select * from(
SELECT
    access_control_kubun as "access_control_kubun"
  , punch_time as "punch_time"
  , 'punch'  as "data_kubun"
  , ''  as "comment"
  , id as "t_punchdatum_id"
FROM
  dmgtime.t_punchdata 
where m_user_id = 1
and id not in (SELECT t_punchdatum_id FROM dmgtime.t_correcteddata where m_user_id = 1)
union all
SELECT
    access_control_kubun as "access_control_kubun"
  , corrected_time as "punch_time"
  , 'corrected'  as "data_kubun"
  , comment  as "comment"
  , '-' as "t_punchdatum_id"
FROM
  dmgtime.t_correcteddata 
where m_user_id = 1
and corrected_time is not null
) u
order by u.punch_time desc, u.access_control_kubun, u.t_punchdatum_id desc
;
SQL
 #.paginate(page: params[:page])
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
