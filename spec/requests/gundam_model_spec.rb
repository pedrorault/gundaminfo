require 'rails_helper'

RSpec.describe "GundamModels", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/gundam_model/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/gundam_model/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/gundam_model/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/gundam_model/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /_form" do
    it "returns http success" do
      get "/gundam_model/_form"
      expect(response).to have_http_status(:success)
    end
  end

end
