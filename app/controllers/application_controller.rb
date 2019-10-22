class ApplicationController < ActionController::Base
  before_action :require_login

  def not_authenticated
    redirect_to :sign_in
  end
end
