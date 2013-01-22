class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def all
 #raise request.env["omniauth.auth"].to_yaml 
    user = User.from_omniauth(request.env["omniauth.auth"])
    

    if user.persisted?
      flash.notice = I18n.t("devise.sessions.signed_in")
      sign_in_and_redirect user
    else
      session["devise.user_attributes"] = user.attributes
      session["devise.user_auth_attributes"] = user.authentications.first.attributes
      redirect_to new_user_registration_url
    end
  end

  alias_method :twitter, :all
  alias_method :facebook, :all
end
