class Users::RegistrationController < Devise::RegistrationsController

  def create
    if verify_recaptcha(timeout: 10)
      super
    else
      build_resource
      clean_up_passwords(resource)
      flash.now[:alert] = "There was an error with the recaptcha code below. Please re-enter the code."      
      flash.delete :recaptcha_error
      render :new
    end
  end

end
