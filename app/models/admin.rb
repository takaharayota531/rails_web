# 管理者クラス
class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable,
         :validatable, password_length: 8..128

  # 10..128→パスワードの文字数は8-128までという意味
end
