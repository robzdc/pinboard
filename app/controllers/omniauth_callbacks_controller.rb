class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  #[:twitter, :linkedin].each do |provider|
  #  provides_callback_for provider
  #end

  def twitter
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.find_for_oauth(env["omniauth.auth"], current_user)
     
    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Twitter") if is_navigational_format?
    else
      session["devise.twitter_data"] = env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def linkedin
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.find_for_oauth(env["omniauth.auth"], current_user)
      
    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Linkedin") if is_navigational_format?
    else
      session["devise.linkedin_data"] = env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end



  def self.provides_callback_for(provider)
    class_eval %Q{
      def #{provider}
        @user = User.find_for_oauth(env["omniauth.auth"], current_user)

        if @user.persisted?
          sign_in_and_redirect @user, event: :authentication
          set_flash_message(:notice, :success, kind: #{provider}.capitalize) if is_navigational_format?
        else
          session["devise.#{provider}_data"] = env["omniauth.auth"]
          redirect_to new_user_registration_url
        end
      end
    }
  end
end