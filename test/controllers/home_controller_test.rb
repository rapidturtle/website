require 'test_helper'

describe HomeController do
  describe "index" do
    it "gets index" do
      get :index
      must_respond_with :success
    end
  end
end
