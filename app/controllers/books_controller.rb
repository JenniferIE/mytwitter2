class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  def index
    @books = Book.all 
  end

  def new
    @book = Book.new
    @genres = Genre.all
  end

  def create
      @book = Book.new(book_params)

      respond_to do |format|
        if @book.save
          format.html { redirect_to @book, notice: 'Book was successfully created.' }
          format.json { render :show, status: :created, location: @book }
        else
          format.html { render :new }
          format.json { render json: @book.errors, status: :unprocessable_entity }
        end
    end
  end

  def show
    @book = Book.find(params[:id])
    # respond_to do |format|
    #   format.html
    # end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "You have successfully delete a book."
    redirect_to books_url
        
  end

 private

    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :author, :isbn, :year, :genre_id)
    end
end
