class AuthorsController < ApplicationController
  def index
     @authors = Author.all
  end

  def show
     @author = Author.find_by id: params[:id]
  end

  def new
     @author = Author.new
  end
end
