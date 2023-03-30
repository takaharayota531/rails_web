# LINEログインに用いられる情報
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[line] # この1行を追加

  def social_profile(provider)
    social_profiles.find { |sp| sp.provider == provider.to_s }
  end

  def create_line_values(omniauth)
    return if provider.to_s != omniauth["provider"].to_s || uid != omniauth["uid"]

    credentials = omniauth["credentials"]
    info = omniauth["info"]

    # 情報として取り出せるが現状必要ないためコメントアウト
    access_token = credentials["refresh_token"]
    access_secret = credentials["secret"]
    credentials = credentials.to_json
    name = info["name"]

    # 暫定的にコメントアウト
    # self.create_values_by_raw_info(omniauth['extra']['raw_info'])
  end

  # json形式を変換するためのメソッド
  # 暫定的に不要なのでコメントアウト
  def create_values_by_raw_info(raw_info)
    self.raw_info = raw_info.to_json
    save!
  end
end
