require 'rails_helper'

RSpec.describe FormValuesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index, id: Form.first.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http success" do
      {post: '/forms/1/entries'}
      expect(response).to have_http_status(:success)
    end

    it "alerts to extra fields" do
      pending "add some examples to (or delete) #{__FILE__}"
    end

    it "alerts to wrong form id" do
      pending "add some examples to (or delete) #{__FILE__}"
    end

    it "can handle missing fields" do
      pending "add some examples to (or delete) #{__FILE__}"
    end
  end

  describe "GET #update" do
#    it "returns http success" do
      pending "add some examples to (or delete) #{__FILE__}"
#get :update
#expect(response).to have_http_status(:success)
#    end
  end

  describe "GET #delete" do
#    it "returns http success" do
      pending "add some examples to (or delete) #{__FILE__}"
#get :delete
#expect(response).to have_http_status(:success)
#    end
  end

end
