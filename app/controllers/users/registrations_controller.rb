class Users::RegistrationsController < Devise::RegistrationsController

  def create
    super
    if params[:optin] == "1"
       SubscribeToNewsletterService.new(@user).call
    end
  end
end
