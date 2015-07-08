class RegistrationsController < Devise::RegistrationsController

  def after_sign_up_path_for(resource)
   '/'# Or :prefix_to_your_route
  end

  def edit

  end

  def update
    current_user.update user_params
    if current_user.errors.any?
      render 'edit'
    else
      render :show
    end

    def show
      current_user
    end
  end


  protected

  def user_params
    params[:user].permit %i(name address1 address2 city state zip about phone)
  end
end
