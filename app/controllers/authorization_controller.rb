class AuthorizationController < ApplicationController
  def oauth_create
      auth = request.env["omniauth.auth"]
      render :text=>auth.to_yaml
  end

  def oauth_destroy
  end
end
