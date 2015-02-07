class StaticPagesController < ApplicationController
  def home
    @m_user = current_user
    if @m_user
      str = <<SQL
select * from(
select
    access_control_kubun as "access_control_kubun"
  , punch_time as "punch_time"
  , 'punch'  as "data_kubun"
  , ''  as "comment"
  , id as "punch_id"
from
  t_punchdata 
where m_user_id = ?
and id not in (select t_punchdatum_id from t_correcteddata where m_user_id = ?)
union all
select
    access_control_kubun as "access_control_kubun"
  , corrected_time as "punch_time"
  , 'corrected'  as "data_kubun"
  , comment  as "comment"
  , '-' as "punch_id"
from
  t_correcteddata 
where m_user_id = ?
and corrected_time is not null
) u
order by u.punch_time desc, u.access_control_kubun, u.punch_id desc
;
SQL
      @t_punchdata = TCorrecteddatum.find_by_sql([str, @m_user.id, @m_user.id, @m_user.id])
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
