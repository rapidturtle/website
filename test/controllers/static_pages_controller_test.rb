require 'test_helper'

describe StaticPagesController do
  it "gets contact" do
    get :contact
    must_respond_with :success
  end
end
