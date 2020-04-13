class BooksController < ApplicationController
  def top
  end

  def create
  	book = Book.new(book_params)
    book.save
  	redirect_to book_path(book.id), flash:{create: "Book was successfully create!"}
  end

  def index
  	@books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id), flash:{update: "Book was successfully update!"}
  end
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path, flash:{delete: "The Book data was deleted."}
  end

  private
  def book_params
  	params.require(:book).permit(:title, :body)
  end
end
