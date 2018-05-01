class BooksController < ApplicationController
  def show
    @result = Book.make_NYT_API_call()
  end
end
