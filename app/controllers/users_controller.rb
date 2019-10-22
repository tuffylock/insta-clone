class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_back_or_to(:root, notice: 'Welcome!')
    else
      flash.now[:alert] = @user.errors.full_messages
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
