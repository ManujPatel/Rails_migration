class AuthorsController < ApplicationController
  def index
    @authors = Author.all
    @books = Book.all
  end

  def new
    @author = Author.new
    @book = Book.new
  end

  def create
    @author = Author.create(params.require(:author).permit(:first_name, :last_name , :date_of_birth, :email))
    if @author.valid?
      redirect_to authors_path
    else
      flash[:errors] = @author.errors.full_messages
      redirect_to new_author_path
    end
    @book = Book.create(params.require(:book).permit(:name, :price, :author_id))
    redirect_to author_path(@book.author)

  end

  def show
    @author = Author.find(params[:id])
    @book = Book.find_by(author_id: params[:id])

    
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    @author.update(params.require(author).permit(:first_name, :last_name, :date_of_birth, :email))
    redirect_to author_path(@author)
  end

  def destroy
  end
end
