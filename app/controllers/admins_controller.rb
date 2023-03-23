class AdminsController < ApplicationController
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      # 保存の成功をここで扱う。
    else
      # 成功しなかったらnewをrenderしエラーメッセージを表示する
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def admin_params
    params.require(:admin).permit(:email, :password,
                                  :password_confirmation)
  end
end
