class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    # @user = @book.users
    @book.save
    redirect_to book_path(@book.id)
  end

  def index
    @books = Book.all
    @user = current_user
  end

  def show
    @book = Book.find(params[:id])
    @user = current_user
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
