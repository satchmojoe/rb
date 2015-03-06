require 'rails_helper'

RSpec.describe FormsController, type: :controller do

  before :each do
    @form = FactoryGirl.create :form
  end

  describe "GET #create" do
    it "returns http success" do
      post :create, form: JSON.parse(@form.to_json).to_hash
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #update" do
#    it "returns http success" do
  pending "add some examples to (or delete) #{__FILE__}"
#    get :update
#      expect(response).to have_http_status(:success)
#    end
  end

  describe "GET #delete" do
    it "returns http success" do
      get :delete
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, id: Form.first.id
      expect(response).to have_http_status(:success)
    end
  end

end
