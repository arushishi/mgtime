namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_m_users
    make_m_cards
    make_t_punchdata
    make_t_correcteddata
  end
end

def make_m_users
  password  = "password"
  MUser.create!(user_name: "Eijiro Katata",
                 password: password,
                 password_confirmation: password,
                 delete_flg: false)
  MUser.create!(user_name: "Ruiko Katata",
                 password: password,
                 password_confirmation: password,
                 delete_flg: false)
  9.times do |n|
    name  = Faker::Name.name
    MUser.create!(user_name:     name,
                 password: password,
                 password_confirmation: password,
                 delete_flg: false)
  end
end

def make_t_punchdata
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 2,card_identification_code: "0112041221139322",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 2,card_identification_code: "0112041221139322",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 2,card_identification_code: "0112041221139322",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 2,card_identification_code: "0112041221139322",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 2,card_identification_code: "0112041221139322",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 2,card_identification_code: "0112041221139322",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 2,card_identification_code: "0112041221139322",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 2,card_identification_code: "0112041221139322",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 2,card_identification_code: "0112041221139322",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 2,card_identification_code: "0112041221139322",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 2,card_identification_code: "0112041221139322",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 2,card_identification_code: "0112041221139322",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 2,card_identification_code: "0112041221139322",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 2,card_identification_code: "0112041221139322",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 2,card_identification_code: "0112041221139322",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 2,card_identification_code: "0112041221139322",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
end

def make_m_cards
  MCard.create!(card_identification_code: "01010410BC135502",
                m_user_id: 1,
                delete_flg: false)
  MCard.create!(card_identification_code: "0112041221139322",
                m_user_id: 2,
                delete_flg: false)
  MCard.create!(card_identification_code: "0114B3F8BF117307",
                m_user_id: 2,
                delete_flg: false)
end

def make_t_correcteddata
  TCorrecteddatum.create!(t_punchdatum_id: 1,m_user_id: 1,access_control_kubun: "Arrived",corrected_time: "2015-02-05 12:34:56", comment: "遅刻", delete_flg: false)
  TCorrecteddatum.create!(t_punchdatum_id: 0,m_user_id: 1,access_control_kubun: "Arrived",corrected_time: "2015-02-05 12:34:56", comment: "押し忘れ", delete_flg: false)
  TCorrecteddatum.create!(t_punchdatum_id: 4,m_user_id: 1,access_control_kubun: "Arrived", comment: "ミス", delete_flg: false)
end
