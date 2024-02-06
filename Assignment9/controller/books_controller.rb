class BooksController < ApplicationController
  def index
    @books = Book.all
    render json: @books
  end
  def create
    @books = Book.new(params.require(:book).permit(:title, :author, :genre, :quantity))
    if @books.save
      render json: @books, status: :created, location: @books
    end
  end
  def update
    @book = find_book
    if @books.update(params.require(:book).permit(:title, :author, :genre, :quantity))
      render json: @books, status: :created, location: @books
    else
      render json: @books.errors, status: :unprocessable_entity
    end
  end
  def show 
    begin
      @books = Book.find(params[:id])
      render json: @books , status: 200
    rescue ActiveRecord::RecordNotFound
      render json: { message: 'Book not found' }, status: 404
    end
  end
  def destroy
    @books = Book.find(params[:id])
    if @books.destroy
      render json: { message: 'Book successfully deleted.' }, status: 200
    else
      render json: @books.errors, status: :unprocessable_entity
    end
  end
  
  private 
  def find_book
     Book.find(params[:id])
  end
end
