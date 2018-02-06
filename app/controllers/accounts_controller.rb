class AccountsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @accounts = Account.all
  end
  def new
    @account = Account.new
  end
  def create
    @account = Account.new(account_params)
    if @account.save
      flash[:notice] = 'account created successfully'
      redirect_to accounts_path
    else
      render :new
    end
  end
  def edit
    @account = Account.find(params[:id])
  end
  def update
    @account = Account.find(params[:id])
    if @account.update(account_params)
      redirect_to accounts_path
    else
      render :edit
    end
  end
  def destroy
    @account = Account.find(params[:id])
    @account.destroy
    redirect_to accounts_path
  end
  private
  def account_params
    params.require(:account).permit(:number, :initial_amount, :actual_amount, :user_id)
  end

end
