class AdminsController < ApplicationController
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      flash[:success] = "adminの登録に成功しました"
      # TODO: 高原：後でpath通しておく
      # redirect_to admin_url(@admin)

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
