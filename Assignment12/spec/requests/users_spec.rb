require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new user" do
        expect {
          post :create, params: { user: { name: "John Doe", address: "123 Main St", phone_no: "1234567890", role: "user" } }
        }.to change(User, :count).by(1)
      end

      it "renders a JSON response with the new user" do
        post :create, params: { user: { name: "John Doe", address: "123 Main St", phone_no: "1234567890", role: "user" } }
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json; charset=utf-8')
        expect(response.location).to eq(user_url(User.last))
      end
    end
  end

  describe "PUT #update" do
    let!(:user) { create(:user) }

    context "with valid params" do
      it "updates the requested user" do
        put :update, params: { id: user.id, user: { name: "Jane Doe" } }
        user.reload
        expect(user.name).to eq("Jane Doe")
      end

      it "renders a JSON response with the user" do
        put :update, params: { id: user.id, user: { name: "Jane Doe" } }
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json; charset=utf-8')
        expect(response.body).to include('User successfully updated.')
      end
    end
  end

  describe "GET #show" do
    let!(:user) { create(:user) }

    it "returns a success response" do
      get :show, params: { id: user.id }
      expect(response).to be_successful
    end
  end

  describe "DELETE #destroy" do
    let!(:user) { create(:user) }

    it "destroys the requested user" do
      expect {
        delete :destroy, params: { id: user.id }
      }.to change(User, :count).by(-1)
    end

    it "renders a JSON response with a success message" do
      delete :destroy, params: { id: user.id }
      expect(response).to have_http_status(:ok)
      expect(response.content_type).to eq('application/json; charset=utf-8')
      expect(response.body).to include('User successfully deleted.')
    end
  end
end
