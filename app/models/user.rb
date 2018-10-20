class User < ApplicationRecord
  # emailを小文字に変換
  before_save {self.email = email.downcase}

  # nameが空じゃないことを確認する
  validates :name, presence: true, length:{maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  # emailが空じゃないことを確認する
  validates :email, presence: true, length:{maximum: 255},
    format:{with: VALID_EMAIL_REGEX},
    uniqueness: {case_sensitive: false}

  # パスワードの設定
  has_secure_password
  validates :password, presence: true, length:{minimum: 6}

end
