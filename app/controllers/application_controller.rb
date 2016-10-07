class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    #For adding custom attributes to Devise strong params
    before_filter :configure_permitted_parameters, if: :devise_controller?

    protected
        #For adding custom attributes to Devise strong params
        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :remember_me, :username) }
            devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :current_password, :username, { question_ids: [] }, { answer_ids: [] } ) }
        end

end
