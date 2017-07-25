require 'rails_helper'

describe HomeController do

  before :each do
    request.env["HTTP_ACCEPT"] = 'application/json'
    request.env["CONTENT_TYPE"] = 'application/json'
  end

  describe 'GET index' do

    context 'successfully' do
      before do
        get :index
      end
      it 'responds successfully with an HTTP 200 status code' do
        expect(response).to be_success
        expect(response.status).to eq 200
      end
    end

  end
end
