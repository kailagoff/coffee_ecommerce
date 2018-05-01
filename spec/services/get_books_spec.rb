require 'rails_helper'

describe Book, :vcr => true do
  it "returns a 200 success header when the API call is made" do
    response = Book.make_NYT_API_call
    expect(response.size).to(eq(3))
  end
end
