class Book
  def make_NYT_API_call
    response = RestClient::Request.execute(method: :get, url: 'http://api.nytimes.com/svc/books/v3/lists/names.json', headers: {api_key: ' 2025835c97874ed7b3bf98c1f9bb0a94'})
    JSON.parse(response)
  end
end
