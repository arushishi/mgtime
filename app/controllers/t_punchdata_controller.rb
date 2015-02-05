class TPunchdataController < ApplicationController
  def new
    t_punchdata = TPunchdatum.new
    m_user_id = MCard.where(card_identification_code: params['data'][0]['card_identification_code']).pluck(:m_user_id)
    t_punchdata.attributes = { card_identification_code: params['data'][0]['card_identification_code'],
                               m_user_id: m_user_id[0]?m_user_id[0]:0,
                               access_control_kubun: params['data'][0]['access_control_kubun'],
                               punch_time: Time.now
    }
    t_punchdata.save
    render :text => "OK"
  end

  def show
  end
end
