class ApplicationController < ActionController::Base
    #Para agregar otros campos en el formulario de devise
    before_action :configure_permitted_parameters, if: :devise_controller?  
    protected  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :image_url])
    end
end
