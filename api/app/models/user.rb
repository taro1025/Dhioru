class User < ApplicationRecord
  before_save :downcase_email
  with_options presence: true, length: { maximum: 50 } do
    validates :last_name_kanji
    validates :first_name_kanji
    validates :last_name_kana
    validates :first_name_kana
  end
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                  format: { with: VALID_EMAIL_REGEX }, uniqueness: true

  has_secure_password
  validates :password, presence: true, length: { minimum: 8 }, allow_nil: true

  private
    def downcase_email
      self.email = email.downcase
    end

end
