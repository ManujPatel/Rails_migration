class BooksController < ApplicationController
  def index
    @book = Books.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(params.require(:book).permit(:name, :price, :author_id))
    redirect_to author_path(@book.author)
  end

  def destroy
  end
end
