# インターンシップ記事本体
class Internship < ApplicationRecord
  has_one :company_overall, dependent: :destroy
end
