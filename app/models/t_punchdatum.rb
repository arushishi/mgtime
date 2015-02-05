class TPunchdatum < ActiveRecord::Base
  belongs_to :m_user
  default_scope -> { order('punch_time DESC') }
end
