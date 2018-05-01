class Book
  def self.make_NYT_API_call
    uri = URI("https://api.nytimes.com/svc/search/v2/articlesearch.json")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    uri.query = URI.encode_www_form({
      "api-key" => "2025835c97874ed7b3bf98c1f9bb0a94",
      "q" => "coffee",
      "begin_date" => "20120101"
    })
    request = Net::HTTP::Get.new(uri.request_uri)
    result = JSON.parse(http.request(request).body)
  end
end
