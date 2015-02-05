class TCorrecteddatum < ActiveRecord::Base
  belongs_to :m_user
  validates :comment, length: { minimum: 1 , too_short:"は必須です。"}
end
