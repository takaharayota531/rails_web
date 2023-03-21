#学生の履歴書を操作するためのフォームオブジェクト
# user_resume,working_history,usersの3つをまとめる
# resumes_controllerで使う

class InternshipForm
	include ActiveModel::Model
	include ActiveModel::Attributes
	
	# 以下にattributeとvalidationを書く
	attribute :sample, :string, default: "aiueo"

	validates :sample, presence: true, length: { maximum: 30 }

	# 以下にmethodを書く
	def save
		
	end
end