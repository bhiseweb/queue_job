require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  describe "GET index" do
    
    it "should be returns successful response" do
      get :index
      expect(response).to have_http_status(:ok)
    end

  end
end