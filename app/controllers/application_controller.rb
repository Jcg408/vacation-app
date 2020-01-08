class ApplicationController < ActionController::Base
    before_action :config_permitted_params, if: :devise_controller?

    protected

    def config_permitted_params
        devise_parameter_sanitizer.permit(:sign_up, keys:[:first_name, :last_name, :email, :password, :url])
        devise_parameter_sanitizer.permit(:update, keys:[:first_name, :last_name, :email, :password, :url])
    end

end
