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
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def book_params
  end

end
