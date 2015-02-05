namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_m_users
    make_t_punchdata
    make_m_cards
  end
end

def make_m_users
    admin = MUser.create!(user_name: "Eijiro Katata",
                         password: "katata718",
                         password_confirmation: "katata718",
                         delete_flg: false)
  9.times do |n|
    name  = Faker::Name.name
    password  = "password"
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
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "01010410BC135502",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "0112041221139322",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "0112041221139322",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "0112041221139322",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "0112041221139322",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "0112041221139322",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "0112041221139322",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "0112041221139322",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "0112041221139322",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "0112041221139322",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "0112041221139322",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "0112041221139322",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "0112041221139322",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "0112041221139322",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "0112041221139322",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "0112041221139322",access_control_kubun: "Arrived",punch_time: "2015-02-05 12:34:56")
  TPunchdatum.create!(m_user_id: 1,card_identification_code: "0112041221139322",access_control_kubun: "Left",punch_time: "2015-02-05 12:34:56")
end

def make_m_cards
  MCard.create!(card_identification_code: "01010410BC135502",
                m_user_id: 1,
                delete_flg: false)
end

def make_m_cardsaaaa
  users = User.all
  user  = users.first
  followed_users = users[2..50]
  followers      = users[3..40]
  followed_users.each { |followed| user.follow!(followed) }
  followers.each      { |follower| follower.follow!(user) }
end
