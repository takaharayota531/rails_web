# インターン記事中の会社概要
class CompanyOverall < ApplicationRecord
  validates :company_explanation, length: { maximum: 400 }
  belongs_to :internship
end
