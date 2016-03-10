class BooksController < ApplicationController
  before_action do
    
   user_passcode = session[:passcode]
   if user_passcode.blank?
     redirect_to sign_in_path
   end
 end

  def index
     @books = Book.all
  end

  def new
     @book = Book.new
  end

  def show
     @book = Book.find_by id: params[:id]
  end

  def create
    @book = Book.new
    @book.photo_url = params[:book][:photo_url]
    @book.title = params[:book][:title]
    @book.author_id = params[:book][:author_id]
    @book.price = params[:book][:price]

    if @book.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
     @book = Book.find_by id: params[:id]
  end

  def update
    @book = Book.find_by id: params[:id]
    @book.price = params[:book][:price]

    if @book.save
      redirect_to book_path(id: @book.id)
    else
      render :edit
    end
  end

  def delete
    @book = Book.find_by id: params[:id]
    @book.destroy
    redirect_to root_path
  end
end
