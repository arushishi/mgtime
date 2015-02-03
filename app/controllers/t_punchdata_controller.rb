class TPunchdataController < ApplicationController
  def new
    t_punchdata = TPunchdata.new
    t_punchdata.attributes = { card_identification_code: params['data'][0]['card_identification_code'],
                               access_control_kubun: params['data'][0]['access_control_kubun'],
                               punch_time: Time.now
    }
    t_punchdata.save
    render :text => "OK"
  end

  def show
  end
end
