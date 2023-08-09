require "rails_helper"

describe LibrariesController, type: :controller do
  describe "GET index" do
    it "render the libraries with books details @teams" do
      library = FactoryGirl.create(:library)
      book = FactoryGirl.create(:book, name: 'Book 1', library: library, quantity: 10)
      user = FactoryGirl.create(:user, email: 'user@gmail.com')
      user_booking = FactoryGirl.create(:user_booking, user: user, book: book)

      get :index
      data = JSON.parse(response.body)['libraries'].first

      expect(response).to have_http_status :ok
      expect(data['library']['name']).to eq(library.name)
      expect(data['books'].first['name']).to eq(book.name)
    end
  end
end
