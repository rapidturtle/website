require 'test_helper'

describe ApplicationHelper do
  describe "full_title" do
    it "formats a title without an argument" do
      full_title.must_equal "Rapid Turtle"
    end

    it "formats a full title with an argument" do
      full_title("Contact Us").must_equal "Rapid Turtle - Contact Us"
    end
  end
end
