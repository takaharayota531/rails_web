class AdminsController < ApplicationController
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      # 保存の成功をここで扱う。
    else
      render 'new'
    end
  end

  private

  def admin_params
    params.require(:admin).permit(:name, :email, :password,
                                  :password_confirmation)
  end
end
