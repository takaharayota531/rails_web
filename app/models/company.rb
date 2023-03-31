# 企業アカウント
class Company < ApplicationRecord

  has_many :company_account, dependent: :destroy
  # Include default devise moduless. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # 一旦deviseを使う必要は無さそう
  # 後から足しても良い
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
end
