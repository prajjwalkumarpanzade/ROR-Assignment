class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
    render json: @transactions
  end
  def create
    @transactions = Transaction.new(params.require(:transaction).permit(:book_id, :user_id, :issue_date, :return_date))
    if @transactions.save
      render json: @transactions, status: :created, location: @transactions
    end
  end
  def update
    @transactions = Transaction.find(params[:id])
    if @transactions.update(params.require(:transaction).permit(:book_id, :user_id, :issue_date, :return_date))
      render json: @transactions, status: :created, location: @transactions
    else
      render json: @transactions.errors, status: :unprocessable_entity
    end
  end
  def show
    begin
      @transactions = Transaction.find(params[:id])
      render json: @transactions, status: 200
    rescue ActiveRecord::RecordNotFound
      render json: { message: 'Transaction not found' }, status: 404
    end
  end
  def destroy
    @transactions = Transaction.find(params[:id])
    if @transactions.destroy
      render json: { message: 'Transaction successfully deleted.' }, status: 200
    else
      render json: @transactions.errors, status: :unprocessable_entity
    end
  end
end
