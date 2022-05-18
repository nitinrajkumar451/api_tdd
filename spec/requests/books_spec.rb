require 'rails_helper'

# RSpec.describe "Books", type: :request do
#   describe "GET /index" do
#     pending "add some examples (or delete) #{__FILE__}"
#   end
# end
RSpec.describe 'Books', type: :request do
  # initialize test data
  let!(:books) { create_list(:book, 5) }
  let!(:book_id) { books.first.id }
  # Test suite for GET /category
  describe 'GET /books' do
    # make HTTP get request before each example
    before { get '/api/v1/books' }
    it 'returns books' do
      expect(json).not_to be_empty
      expect(json.size).to eq(5)
    end
    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end