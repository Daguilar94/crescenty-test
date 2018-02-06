class UsersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @users = User.all
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'user created successfully'
      redirect_to users_path
    else
      render :new
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path
    else
      render :edit
    end
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end
  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :birth_date, :personal_id, :phone, :email, :city)
  end

end
