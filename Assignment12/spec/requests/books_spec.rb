require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new book" do
        expect {
          post :create, params: { book: { title: "Sample Book", author: "Sample Author", genre: "Sample Genre", quantity: 10 } }
        }.to change(Book, :count).by(1)
      end

      it "renders a JSON response with the new book" do
        post :create, params: { book: { title: "Sample Book", author: "Sample Author", genre: "Sample Genre", quantity: 10 } }
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json; charset=utf-8')
        expect(response.location).to eq(book_url(Book.last))
      end
    end
  end

  describe "PUT #update" do
    let!(:book) { create(:book) }

    context "with valid params" do
      it "updates the requested book" do
        put :update, params: { id: book.id, book: { title: "Updated Title" } }
        book.reload
        expect(book.title).to eq("Updated Title")
      end

      it "renders a JSON response with the book" do
        put :update, params: { id: book.id, book: { title: "Updated Title" } }
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json; charset=utf-8')
        expect(response.body).to include('Book successfully updated.')
      end
    end
  end

  describe "GET #show" do
    let!(:book) { create(:book) }

    it "returns a success response" do
      get :show, params: { id: book.id }
      expect(response).to be_successful
    end
  end

  describe "DELETE #destroy" do
    let!(:book) { create(:book) }

    it "destroys the requested book" do
      expect {
        delete :destroy, params: { id: book.id }
      }.to change(Book, :count).by(-1)
    end

    it "renders a JSON response with a success message" do
      delete :destroy, params: { id: book.id }
      expect(response).to have_http_status(:ok)
      expect(response.content_type).to eq('application/json; charset=utf-8')
      expect(response.body).to include('Book successfully deleted.')
    end
  end
end
