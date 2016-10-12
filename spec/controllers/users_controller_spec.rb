require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET #show" do
    let!(:application) { create :application }
    let!(:user) { create :user }
    let!(:token) { create :access_token, application: application, resource_owner_id: user.id }

    it "returns http success" do
      get :show, { format: :json, access_token: token.token, id: user.id }
      expect(response).to have_http_status(:success)
    end

    it "returns http fail" do
      get :show, { format: :json, id: user.id }
      expect(response).to have_http_status(:unauthorized)
    end
  end
end
