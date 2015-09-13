class BooksController < ApplicationController

#READ: this will retrieve all books thru active record
  def index
    @books = Book.all
#any instance variable declared in this action is
#availble to any view that has the same name
#if you want to use this thing, you must use embedded
#ruby syntax in views
  end

  def show
    @book = get_book
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    #youcould also do Book.create here which creates and saves to the database
    if @book.save
      redirect_to book_path(@book)
    else
      render 'new'
    end

  end

  def edit
    @book=get_book
  end

  def update
    @book=get_book  #why do we need this twice ???

    if @book.update(book_params)
      redirect_to book_path(@book)
    else
      render 'edit'
    end
  end

  def destroy
  end


  private
  def book_params
    params.require(:book).permit(:title,:year_published,:author,:available,:genre,:image_url)
  end

  def get_book
    Book.find(params[:id])
  end

end
