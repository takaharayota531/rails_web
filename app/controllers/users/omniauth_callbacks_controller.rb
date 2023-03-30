# Lineのログインを司どるcontroller
class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # 以下を追加
  def line
    authenticate_action
  end

  private

  # 認証の実装
  def authenticate_action
    @omniauth = request.env["omniauth.auth"]
    if @omniauth.present?
      @profile = User.find_or_initialize_by(provider: @omniauth["provider"], uid: @omniauth["uid"])
      # emailが登録されていなかった場合
      if @profile.email.blank?
        # emailをuidとprovider(ここではline)で構成する
        email = @omniauth["info"]["email"] || "#{@omniauth['uid']}-#{@omniauth['provider']}@example.com"
        @profile = current_user || User.create!(provider: @omniauth["provider"], uid: @omniauth["uid"], email:, name: @omniauth["info"]["name"], password: Devise.friendly_token[0, 20])
      end
      # TODO: 高原：理解する
      @profile.create_line_values(@omniauth)
      sign_in(:user, @profile)
    end
    flash[:notice] = "ログインしました"
    redirect_to root_path
  end

  # 暫定的に記事に書いてあったがこれはなんなん
  # TODO 高原：これ理解する
  # def fake_email(_uid, _provider)
  #   "#{auth.uid}-#{auth.provider}@example.com"
  # end
end
