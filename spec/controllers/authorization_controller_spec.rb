require 'spec_helper'

describe AuthorizationController do

  describe "GET 'oauth_create'" do
    it "returns http success" do
      get 'oauth_create'
      response.should be_success
    end
  end

  describe "GET 'oauth_destroy'" do
    it "returns http success" do
      get 'oauth_destroy'
      response.should be_success
    end
  end

end
