require 'rails_helper'

RSpec.describe SpeciesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http redirect" do
      post :create
      expect(response).to have_http_status(:redirect)
    end

    it "should create an animal in the database" do
      create_a_tiger
      expect(Species.first).to be_a(Species)
      expect(Species.first.name).to eq('tiger')
    end

    it "and go back to the index page" do
      subject = create_a_tiger
      expect(subject).to redirect_to('/')
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE #destroy" do
    it "returns http success" do
      delete :destroy
      expect(response).to have_http_status(:success)
    end
  end

  describe "PATCH #update" do
    it "returns http success" do
      patch :update
      expect(response).to have_http_status(:success)
    end
  end

  def create_a_tiger
    expect(Species.first).to be(nil)
    post :create, name: 'tiger'
  end

end
