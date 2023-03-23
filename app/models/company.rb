# 企業アカウント
class Company < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # 一旦deviseを使う必要は無さそう
  # 後から足しても良い
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
end
