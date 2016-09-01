class UsersController < ApplicationController
  before_action :authenticate_user!
  after_action :verify_authorized
  ## I shouldn't have to add authorize to every method yea?

  def index
    @users = User.all
    authorize User
  end

  def show
    find_user
    authorize @user
  end

  def update
    find_user
    authorize @user
    if @user.update_attributes(secure_params)
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end

  def destroy
    find_user
    authorize @user
    user.destroy
    redirect_to users_path, :notice => "User deleted."
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def secure_params
    params.require(:user).permit(:role, :fcc_username, :bio, :name)
  end

end
