class MUser < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :user_name, presence: true, length: { maximum: 128 },
                    uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }
#  validates :remember_token
#  validates :delete_flg
  has_secure_password
end
