# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # Before action to permit additional parameters
  before_action :configure_permitted_parameters

  # POST /users
  def create
    super
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age, :gender, :fitness_level, :goals])
  end
end
