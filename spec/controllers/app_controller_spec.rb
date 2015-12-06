require 'rails_helper'

RSpec.describe AppController, type: :controller do

  describe "GET #login" do
    it "returns http success" do
      get :login
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #savethedate" do
    it "returns http success" do
      get :savethedate
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #rsvp" do
    it "returns http success" do
      get :rsvp
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #registry" do
    it "returns http success" do
      get :registry
      expect(response).to have_http_status(:success)
    end
  end

end
