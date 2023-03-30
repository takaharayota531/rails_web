# internship記事を操作するためのフォームオブジェクト
# internship,internship_recruit,company_overallの3つをまとめる
# internships_controllerで使う

class InternshipForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  # 以下にattributeとvalidationを書く
  attribute :sample, :string, default: "aiueo"

  validates :sample, presence: true, length: { maximum: 30 }

  # 以下にmethodを書く
  def save; end
end
