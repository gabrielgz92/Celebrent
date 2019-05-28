class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to celebrities_path
    else
      render :new
    end
  end

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)

    redirect_to my_profile_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :date_of_birth, :gender,:photo)
  end
end
