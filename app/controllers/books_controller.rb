class BooksController < ApplicationController
  def show
    api_call = Book.new
    @result = api_call.make_NYT_API_call()
  end
end
