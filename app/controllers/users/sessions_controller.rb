# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  respond_to :json

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message!(:notice, :signed_in)
    sign_in(resource_name, resource)

    # Respond with a success message and user data
    render json: { message: 'Signed in successfully.', user: resource }, status: :ok
  rescue StandardError => e
    # Handle errors and respond with error messages
    render json: { errors: e.message }, status: :unprocessable_entity
  end

  protected

  def auth_options
    { scope: resource_name, recall: "#{controller_path}#new" }
  end
end
