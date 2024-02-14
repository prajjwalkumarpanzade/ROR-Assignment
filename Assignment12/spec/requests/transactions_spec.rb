require 'rails_helper'

RSpec.describe TransactionsController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_successful
    end
  end

 

  describe "PUT #update" do
    let(:transaction) { FactoryBot.create(:transaction) }

    context "with valid parameters" do
      let(:new_attributes) {
        { issue_date: Faker::Date.backward(days: 5) }
      }

      it "updates the requested transaction" do
        put :update, params: { id: transaction.to_param, transaction: new_attributes }
        transaction.reload
        expect(transaction.issue_date.to_s).to eq(new_attributes[:issue_date].to_s)
      end

      it "renders a JSON response with the transaction" do
        put :update, params: { id: transaction.to_param, transaction: new_attributes }
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end
    end
  end

  describe "DELETE #destroy" do
    let!(:transaction) { FactoryBot.create(:transaction) }

    it "destroys the requested transaction" do
      expect {
        delete :destroy, params: { id: transaction.to_param }
      }.to change(Transaction, :count).by(-1)
    end

    it "renders a JSON response with the message" do
      delete :destroy, params: { id: transaction.to_param }
      expect(response).to have_http_status(:ok)
      expect(response.content_type).to eq('application/json; charset=utf-8')
    end
  end
end
