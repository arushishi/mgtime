class MUser < ActiveRecord::Base
  has_many :m_cards
  before_save { self.user_name = user_name.downcase }
  before_create :create_remember_token
  validates :user_name, presence: true, length: { maximum: 128 },
                    uniqueness: { case_sensitive: false }
  validates :password_digest, length: { minimum: 6 }
#  validates :remember_token
#  validates :delete_flg
  has_secure_password

  def MUser.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def MUser.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = MUser.encrypt(MUser.new_remember_token)
    end
end
