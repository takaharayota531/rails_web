# インターンシップ記事本体
class Internship < ApplicationRecord
  # depentent: :destory => Internshipが削除されると対応するcompany_overallも消える
  has_one :company_overall, dependent: :destroy
end
