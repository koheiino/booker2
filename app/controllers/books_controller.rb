class BooksController < ApplicationController
  def about
    
  end
  
  def new
    @list = List.new
  end
  def create
    list = List.new(book_params)
    list.save
    redirect_to'/top'
  end

  def list_params
    params.require(:list).permit(:title, :body)
  end
end
