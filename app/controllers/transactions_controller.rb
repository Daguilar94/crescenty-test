class TransactionsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @transactions = Transaction.all
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    if @transaction.save
      flash[:notice] = 'account created successfully'
      redirect_to transactions_path
    else
      render :new
    end
  end

  private
  def transaction_params
    params.require(:transaction).permit(:date, :detail, :amount, :account_id)
  end
end
